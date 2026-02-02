package PRKSS.PROJ_Tour.modules;

import java.util.Properties;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

public class Mailer {
	private String MyEmailId;
	private String  MyAppPassword;
	public  Mailer() {
		MyEmailId="nitins941167@gmail.com";
		MyAppPassword="tgrjiddgfkubhsqx";
		
	}
	public boolean sendEmail(String SendTo,String Subject,String Message) {
		
		boolean res;
		try {
			//step1
			Properties p=new Properties();
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", 465);
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.socketFactory.class" ,"javax.net.ssl.SSLSocketFactory");
			//step2
			JavaMailSenderImpl ji=new JavaMailSenderImpl();
			ji.setUsername(MyEmailId);
			ji.setPassword(MyAppPassword);
			ji.setJavaMailProperties(p);
			//step3
			MailSender ms=ji;
			//step4
			SimpleMailMessage sm=new SimpleMailMessage();
			sm.setTo(SendTo);
			sm.setSubject(Subject);
			sm.setText(Message);
			sm.setFrom(MyEmailId);
			//step5
			ms.send(sm);
			res=true;
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			res=false;
			System.out.println("error in mail sending: "+e.getMessage());
		}
		return res;
	}

}
