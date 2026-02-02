package PRKSS.PROJ_Tour.controller;

import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import PRKSS.PROJ_Tour.modules.DBmanager;
import PRKSS.PROJ_Tour.modules.EncryptionManager;
import PRKSS.PROJ_Tour.modules.Mailer;

@Controller
public class AdminController {
	DBmanager dm=new DBmanager();
	String CommandText="";
	String msg="";
@RequestMapping("/admin/dashboard")
public ModelAndView open_dashboard(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		
	}
	return new ModelAndView("admin/dashboard");
  }
@RequestMapping("/admin/Changepass")
public ModelAndView open_Changepass(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");}
	
	return new ModelAndView("admin/Changepass");
  }
@RequestMapping("/admin/updatepass")
public ModelAndView update_pass(@RequestParam String cur_pass, @RequestParam String new_pass,
		@RequestParam String conf_pass,HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		
	}
	if (new_pass.equals(conf_pass)==true) {
		String aid=ses.getAttribute("adminid").toString();
		EncryptionManager em=new EncryptionManager();
		String e_curpass=em.encryptMyData(cur_pass);
		CommandText="Select *from trav_login where userId='"+aid+"' and pass='"+e_curpass+"'";
		ResultSet rs=null;
		try {
			//Validation current Pass
			rs=dm.executeMySelect(CommandText);
			if (rs.next()==true) {
				//updating password
				String e_newpass=em.encryptMyData(new_pass);
				CommandText ="Update trav_login set pass='"+e_newpass+"' where userId='"+aid+"'";
				boolean res=dm.executeMyInsertUpdateOrDelete(CommandText);
				msg=res==true?"Your password is updated Successfully.":"Sorry! Unable to update your password.";
				
			}
			else {
				msg="Invalid current password.Please try again.";
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: "+e.getMessage());
			msg="Sorry! Due to some technical errors, We are unable to update your password.";
		}
		
	}
	else {
		msg="New Password and Current Password must be same.";
	}
	ModelAndView mv = new ModelAndView();
	mv.setViewName("admin/Changepass"); //page name
	mv.addObject("msg", msg);
	return mv;
}
@RequestMapping("/admin/Notification")
public ModelAndView open_Notification(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		}
	
	return new ModelAndView("admin/Notification");
  }
@RequestMapping("/admin/ManageEnquiry")
public ModelAndView Manage_Enquiry(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		}
	CommandText="Select * from enquiry_tbl order by Enquiry_id desc";
	ResultSet rs=dm.executeMySelect(CommandText);
	ModelAndView mv=new ModelAndView();
	mv.setViewName("admin/ManageEnquiry");
	mv.addObject("result",rs);
	return mv;
  }

@RequestMapping("/admin/managefeed")
public ModelAndView Manage_feed(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		}
	CommandText="Select f.fid,f.userid,f.title,f.feed_msg,f.fdt,r.Name,r.Mob_No from tbl_feedback f, trek_logtbl r order by f.fid desc";
	ResultSet rs=dm.executeMySelect(CommandText);
	ModelAndView mv=new ModelAndView();
	mv.setViewName("admin/managefeed");
	mv.addObject("result",rs);
	return mv;
  }
@RequestMapping("/admin/saveevent")
public ModelAndView save_Notification(@RequestParam String event_msg,HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		}
	CommandText="insert into tbl_events(Notification)values('"+event_msg+"')";
	boolean res=dm.executeMyInsertUpdateOrDelete(CommandText);
	msg=res==true?"Notification message saved successfully.":"Sorry..! Unable to save your Notification";
	ModelAndView mv=new ModelAndView();
	mv.setViewName("admin/Notification");
	mv.addObject("msg",msg);
	return mv;
  }
@RequestMapping("/admin/manageuser")// url of page (href)
public ModelAndView manage_user(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		}
	CommandText="Select * from trek_logtbl order by log_dt desc";
	ResultSet rs=dm.executeMySelect(CommandText);
	ModelAndView mv=new ModelAndView();
	mv.setViewName("admin/manageuser");// name of view page
	mv.addObject("result",rs);
	return mv;
  }
@RequestMapping("/admin/send")
public ModelAndView open_send(HttpSession ses) {
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/lin");
		}
	return new ModelAndView("admin/send");
  }
@RequestMapping(value="/admin/submitsend",method=RequestMethod.POST)
public ModelAndView submit_send(@RequestParam String sendto,@RequestParam String subject,@RequestParam String message,HttpSession ses)
{
	if (ses.getAttribute("adminid")==null) {
		return new ModelAndView("redirect:/login");
		}
	Mailer m=new Mailer();
	boolean r=m.sendEmail(sendto,subject,message);
	String msg=r==true?"Email sent successfully.":"Sorry unable to sent email.";
	ModelAndView mv=new ModelAndView();
	mv.setViewName("admin/send");
	mv.addObject("msg",msg);
	return mv; 
}
@RequestMapping("/admin/Logout")
public ModelAndView Logout(HttpSession ses) {
	ses.removeAttribute("ADMIN");
	ses.invalidate();
	return new ModelAndView("redirect:/lin"); //url of login page in homecontroller
	
  }

}
