package PRKSS.PROJ_Tour.modules;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Captcha
 */
public class Captcha extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Captcha() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//step1: Get random Characters
		CodeGenerator cg=new CodeGenerator();
		String code=cg.generateRandomCode();
		//Step2: Store code in Session to check later on
		HttpSession ses=request.getSession();
		ses.setAttribute("GeneratedCode",code);
		//step3: create a new blank image in buffered memory
		BufferedImage bi=new BufferedImage(140,35,BufferedImage.TYPE_INT_RGB);
		//step4: get pixels of that image in graphics form to perform updation 
		Graphics2D gr=bi.createGraphics();
		//step5: setting a color to write something on image 
		gr.setColor(Color.LIGHT_GRAY);
		gr.setBackground(Color.WHITE);
		//Step6: filling the background color
		gr.fillRect(0, 0, 140, 35);
		//step7:drawing the border in image 
		gr.drawRect(2,1,132,33);
		//step8 : Setting and applying font 
		Font ft=new Font("cursive",Font.ITALIC,20);
		gr.setFont(ft);
		//step9: Setting color and writing captcha code in image
		gr.setColor(Color.BLUE);
		gr.drawString(code,28,25);
		gr.dispose();
		//step10: getting object of output stream to print image in output
		OutputStream ops=response.getOutputStream();
		//step11: printing image in output
		ImageIO.write(bi, "jpg", ops);
		//step12: closing the output stream
		ops.close();
		
		
		

	}



}
