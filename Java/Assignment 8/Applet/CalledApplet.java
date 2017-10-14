import java.applet.*;
import java.awt.*;
/**
<applet code="CalledApplet" width=300 height=500>
</applet>
*/
public class CalledApplet extends Applet
{
 Label l;
	public void init()
	{
		setLayout(null);
		setBackground(Color.green);
		l=new Label(" ");

		String s=getDocumentBase().toString();
		String msg=s.substring(s.indexOf('?'));		//Seprate passed string
		msg=msg.substring("message= ".length());	//remove message handler
		msg=msg.replace('+',' ');					//decode the String

		l.setText("MESSAGE: "+msg);
		l.setBounds(50,200,500,30);
		add(l);
	}
}