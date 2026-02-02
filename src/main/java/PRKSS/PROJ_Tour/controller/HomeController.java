package PRKSS.PROJ_Tour.controller;

import java.io.FileOutputStream;


import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import org.springframework.web.servlet.ModelAndView;

import PRKSS.PROJ_Tour.modules.CodeGenerator;
import PRKSS.PROJ_Tour.modules.DBmanager;
import PRKSS.PROJ_Tour.modules.EncryptionManager;
import PRKSS.PROJ_Tour.modules.UserMaster;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		String command="Select * from tbl_events order by Event_id desc";
		DBmanager dm=new DBmanager();
		ResultSet rs=dm.executeMySelect(command);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		mv.addObject("noti",rs);
		return mv;
	}
	@RequestMapping(value="/aboutus")
	public ModelAndView aboutus(HttpServletResponse response) throws IOException{
		return new ModelAndView("About");
	}
	@RequestMapping(value="/faqs")
	public ModelAndView faqs(HttpServletResponse response) throws IOException{
		return new ModelAndView("FAQs");
	}
	@RequestMapping(value="/albumb")
	public ModelAndView albumb(HttpServletResponse response) throws IOException{
		return new ModelAndView("gallery");
	}
	
	@RequestMapping(value="/log")
	public ModelAndView log(HttpServletResponse response) throws IOException{
		return new ModelAndView("login_signup");
	}
	@RequestMapping(value="/lin")
	public ModelAndView lin(HttpServletResponse response) throws IOException{
		return new ModelAndView("login");
	}
	@RequestMapping(value="/contact")
	public ModelAndView contct(HttpServletResponse response) throws IOException{
		return new ModelAndView("ContactUs");
	}
	@RequestMapping(value = "/saveregister", method = RequestMethod.POST)
	public ModelAndView save_regi(@ModelAttribute UserMaster um, @RequestParam String CaptchaCode, HttpSession ses,
			  @RequestParam CommonsMultipartFile UserAadhaarPhoto, @RequestParam String Pass,@RequestParam String ConfPass) {
		String message="";
		try {
		//Request generated captcha code from session
		String c_code=ses.getAttribute("GeneratedCode").toString();
		//validating Captcha code
		if (c_code.equals(CaptchaCode)==true) {
			//Start Validating password.....
			if (Pass.equals(ConfPass)==false) {
				message="Password and Confirm Password Must be Same.";
			}
			else {
				//Start: file upload
				long file_size=UserAadhaarPhoto.getSize();
				if (file_size>0) {
					CodeGenerator cg=new CodeGenerator();
					String file_name=cg.generateRandomCode()+"_"+ UserAadhaarPhoto.getOriginalFilename();
					String ext=file_name.substring(file_name.lastIndexOf(".")).toUpperCase();
					if (ext.equals(".JPG") || ext.equals(".PNG") || ext.equals(".JPEG")) {
						String folder_path=ses.getServletContext().getRealPath("resources/User_Pics");
						byte[]file_bytes=UserAadhaarPhoto.getBytes();
						FileOutputStream fos=new FileOutputStream(folder_path+"/"+file_name);
						fos.write(file_bytes);
						fos.close();
						//Setting file name for table
						um.setAadhar(file_name);
						String CommandText="Insert into trek_logtbl(Name,Gender,dob,Email,Mob_No,Address,pin_code,Aadhar) values('"+um.getName()+"','"+um.getGender()+"','"+um.getDOB()+"','"+um.getEmail()+"','"+um.getMob_No()+"','"+um.getAdderss()+"','"+um.getPin_code()+"','"+um.getAadhar()+"')";
						DBmanager dm=new DBmanager();
						boolean result =dm.executeMyInsertUpdateOrDelete(CommandText);
						if (result==true) {
							EncryptionManager em=new EncryptionManager();
							String epass=em.encryptMyData(Pass);		
							CommandText="Insert Into Tbl_log values('"+um.getEmail()+"','"+epass+"','USER')";
							result=dm.executeMyInsertUpdateOrDelete(CommandText);
							System.out.println(CommandText);							
							message="Thanks foe joining us. Your registration is completed";
						}
						else {
							message="Sorry! unable to save your record";
						}
					}
					else {
						message="Invalid file type. Pleasse choose a valid photo";
					}
				}
				else {
					message="Please choose your photo";
				}
			}
		}
		else {
			message="Invalid Captcha code. Please try again."; 
		}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: "+e.getMessage());
			message="Due to some technical issue, We are unable to save your data. Please try later.";
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login_signup");
		mav.addObject("msg", message);
		return mav;
	}
	


// Enquiry Section
@RequestMapping(value="/saveenquiry")
public ModelAndView save_enquiry(@RequestParam String name,@RequestParam String email, @RequestParam String mobno,@RequestParam String query)
{
	String command="Insert into enquiry_tbl(name,mobno,emailid,query_msg) values('"+name+"','"+mobno+"','"+email+"','"+query+"')";
	DBmanager dm= new DBmanager();
	boolean r= dm.executeMyInsertUpdateOrDelete(command);
	String message=r==true?"Thanks for your enuiry we will contact you soon":"Sorry! unable to fetch your enquiry";
	ModelAndView mv=new ModelAndView();
	mv.setViewName("home");
	mv.addObject("msg",message);
	return mv;
	
}
@RequestMapping(value="/processlogin")
public ModelAndView validate_login(@RequestParam String userid,@RequestParam String psw,@RequestParam String usertype ,HttpSession ses)
{
	EncryptionManager em=new EncryptionManager();
	String epass=em.encryptMyData(psw);
	String command="Select * from tbl_log Where userId='"+userid+"' and pass='"+epass+"'";
	System.out.println("Login Command: "+command);
	DBmanager dm=new DBmanager();
	ResultSet rs=null;
	String message="";
	try {
		rs=dm.executeMySelect(command);
		if (rs.next()==true){
			String ut=rs.getString("userType").toUpperCase().trim();
			if (usertype.toUpperCase().trim().equals(ut)==true) {
				//redrict to to admin zone
				if (ut.equals("ADMIN")==true){ 
					//redrict to admin zone 
					ses.setAttribute("adminid", userid);
					return new ModelAndView("redirect:admin/dashboard");
				}else {
					ses.setAttribute("userid", userid);
					return new ModelAndView("redirect:user/welcome");
				}
				
			}
			
		}else {
			message="Invalid userid or password. Please try again";
		}
		
	} catch (Exception e) {
		message="Sorry we are unable to to process due to some technical error."+e.getMessage();
	}
	ModelAndView mv=new ModelAndView();
	mv.setViewName("login");
	mv.addObject("msg",message);
	return mv;
	
	}
@RequestMapping(value="/trendingblog")
public ModelAndView open_trendingblog(HttpServletResponse response) throws IOException{
	String cmd="Select *from tbl_blog order by blog_id desc";
	DBmanager dm=new DBmanager();
	 ResultSet rs=dm.executeMySelect(cmd);
	 ModelAndView mv=new ModelAndView();
	 mv.setViewName("trendingblog");
	 mv.addObject("result",rs);
	 return mv;
}
@RequestMapping(value="/Packages")
public ModelAndView Packages(HttpServletResponse response) throws IOException{
	return new ModelAndView("packages");
}




}

