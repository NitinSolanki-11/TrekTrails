package PRKSS.PROJ_Tour.modules;

public class EncryptionManager {
	public String encryptMyData(String PlainText) {
		String EncryptedText="";
		int ASCIIValue,NewASCIIValue,x;
		char NewChar,ch;
		for(x=0;x<PlainText.length();x++) {
			ch=PlainText.charAt(x);
			ASCIIValue=(int)ch;
			if(ASCIIValue>=65&&ASCIIValue<=90) {
				//Uppercase
				NewASCIIValue=90-ASCIIValue+65;
			}
			else if(ASCIIValue>=97&&ASCIIValue<=122) {
				//Lowercase
				NewASCIIValue=ASCIIValue+1;
			}
			else if(ASCIIValue>=48&&ASCIIValue<=57) {
				//digit
				NewASCIIValue=ASCIIValue+2;
			}else {
				//Symbol
				NewASCIIValue=ASCIIValue;
			}
			NewChar=(char)NewASCIIValue;
			EncryptedText=EncryptedText+NewChar;
		}
		return EncryptedText;
		
		
	}

}
