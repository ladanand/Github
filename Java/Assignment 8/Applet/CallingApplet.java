import java.applet.*;
import java.awt.*;
import java.net.*;
import java.awt.event.*;
/**
<applet code="CallingApplet" width=300 height=500>
</applet>
*/
public class CallingApplet extends Applet implements KeyListener
{
 Label l;
 TextField tf;
 String str;
 URL url;
 AppletContext ac;
	public void init()
	{
		setLayout(null);
		setBackground(Color.cyan);
		
		l=new Label("Enter text here:");
		l.setBounds(50,150,100,50);
		add(l);
		tf=new TextField();
		tf.setBounds(50,200,200,40);
		add(tf);
		tf.addKeyListener(this);
		try
		{
			url=getCodeBase();
			ac=getAppletContext();
		}
		catch(Exception e){		}
	}
	public void keyTyped(KeyEvent ke)
	{
		char ch=ke.getKeyChar();
		if(ch=='\n')
		{
			str=tf.getText();
			tf.setText("");
			System.out.println("\n   "+str);
			try
			{	ac.showDocument(new URL(url+"CalledApplet.html?"+"message="+URLEncoder.encode(str)));	}
			catch(MalformedURLException e)
			{	System.out.println("\n URL NOT FOUND...");	}

		}
	}
	public void keyPressed(KeyEvent ke)
	{	}
	public void keyReleased(KeyEvent ke)
	{	}
}