package PRKSS.PROJ_Tour.controller;


import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import PRKSS.PROJ_Tour.modules.DBmanager;

@Controller
public class UserController {
	@RequestMapping("/user/welcome")
	public ModelAndView open_welcome(HttpSession ses)
	{
		if (ses.getAttribute("userid")==null) {
			return new ModelAndView("redirect:/lin");
			
		}
		return new ModelAndView("user/welcome");
	}
	@RequestMapping("/user/feedback")
	public ModelAndView open_feedback(HttpSession ses) {
		if (ses.getAttribute("userid")==null) {
			return new ModelAndView("redirect:/lin");
			
		}
		return new ModelAndView("user/feedback");
	}
	@RequestMapping(value = "/savefeedback",method=RequestMethod.POST)
	public ModelAndView save_feedback(@RequestParam String userid,@RequestParam String title, @RequestParam String feedback_msg,HttpSession ses) {
		if (ses.getAttribute("userid")==null) {
			return new ModelAndView("redirect:/lin");
			
		}
		String msg="";
		try {
			// read id from session
			String uid=ses.getAttribute("userid").toString();
			DBmanager dm=new DBmanager();
			String command="Insert into tbl_feedback(userid,title,feed_msg) values('"+uid+"','"+title+"','"+feedback_msg+"')";
			boolean r=dm.executeMyInsertUpdateOrDelete(command);
			msg=r==true?"Feedback Successfully Saved. Thanks.":"Sorry Unable to save your Feedback";
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error: "+e.getMessage());
			msg="Due to some technical errors, Your feedback is not saved.";
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/user/Feedback");
		mv.addObject("msg",msg);
		return mv;
		
	}
	@RequestMapping("/user/blog")
	public ModelAndView open_blog(HttpSession ses) {
		if (ses.getAttribute("userid")==null) {
			return new ModelAndView("redirect:/lin");
			
		}
		return new ModelAndView("user/blog");
	}
	@RequestMapping(value = "/user/saveblog", method = RequestMethod.POST)
	public ModelAndView save_blog( @RequestParam String traveldate, @RequestParam String title,
			@RequestParam String location, @RequestParam String content, @RequestParam CommonsMultipartFile photo_file,HttpSession ses) 
	{
		if (ses.getAttribute("userid")==null) {
			return new ModelAndView("redirect:/lin");
			
		}
		String result="";
		try {
			//save file
			long fsize=photo_file.getSize();
			if(fsize>0) {
				String file_name=photo_file.getOriginalFilename();
				String ext=file_name.substring(file_name.lastIndexOf('.')).toUpperCase();
				if (ext.equals(".PNG")|| ext.equals(".JPG")|| ext.equals(".JPEG")) 
				{
					String fpath=ses.getServletContext().getRealPath("/resources/travelpic");
					FileOutputStream fos=new FileOutputStream(fpath+"/"+file_name);
					byte []fbytes =photo_file.getBytes();
					fos.write(fbytes);
					fos.close();
					
					//database code
					String uid= ses.getAttribute("userid").toString();
					String command ="insert into tbl_blog (userid,traveldate,title,location,content,photo_file) values ('"+uid+"','"+traveldate+"','"+title+"','"+location+"','"+content+"','"+file_name+"')";
					DBmanager dm=new DBmanager();
					boolean b=dm.executeMyInsertUpdateOrDelete(command);
					result=b==true?"Thanks for sharing your travel blog. your blog is precious to us.":"sorry..! unable to save your blog";
				}else {
					result="invalid file type. please choose a picture";     
				}
			}else {
					result="please choose a picture";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Erroe: "+e.getMessage());
			result="Sorry! Unable to Submit your Blogs";
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("user/blog");
		mv.addObject("msg",result);
		return mv;
	}
	@RequestMapping("/user/Logout")
	public ModelAndView Logout(HttpSession ses) {
		ses.removeAttribute("user");
		ses.invalidate();
		return new ModelAndView("redirect:/lin"); //url of login page in homecontroller
		
	  }



}
