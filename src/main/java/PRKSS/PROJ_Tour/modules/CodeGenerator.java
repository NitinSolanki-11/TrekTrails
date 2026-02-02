package PRKSS.PROJ_Tour.modules;
import java.util.Random;
public class CodeGenerator {
	public String generateRandomCode()
	{
		Random r= new Random();
		String AllChars="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz";
		int len,x;
		char ch;
		String code="";
		len=AllChars.length();
		for(x=1;x<=6;x++) {
			int rand_index=r.nextInt(len);
			ch=AllChars.charAt(rand_index);
			code=code+ch;
		}
		return code;
	}

}
