import java.applet.*;
import java.awt.*;
import java.awt.event.*;
/**
<applet code="Smiley" width=1000 height=600>
</applet>
*/
public class Smiley extends Applet implements ActionListener
{
 Font f=null;
 String s=null;
 Button b1,b2,b3,b4;
	public void init()
	{
		setLayout(null);
		setBackground(Color.cyan);
		setForeground(Color.red);
	
		b1=new Button("SMILE");
		b2=new Button("SAD");
		b3=new Button("BLANK");
		b4=new Button("BLINK");
		f=new Font("Arial",Font.BOLD,20);
		b1.setFont(f);
		b2.setFont(f);
		b3.setFont(f);
		b4.setFont(f);
		b1.setBounds(100,50,100,50);
		b2.setBounds(250,50,100,50);
		b3.setBounds(400,50,100,50);
		b4.setBounds(550,50,100,50);
		b1.addActionListener(this);
		b2.addActionListener(this);
		b3.addActionListener(this);
		b4.addActionListener(this);
		add(b1);	add(b2);
		add(b3);	add(b4);
 	}
	public void actionPerformed(ActionEvent ae)
	{
			s=ae.getActionCommand();
			repaint();
	}
	public void paint(Graphics g)
	{
		if(s.equals("SMILE"))
		{
			g.drawOval(300,200,100,100);
			g.drawOval(320,220,15,15);
			g.drawOval(365,220,15,15);
			g.drawLine(347,240,347,255);
			g.drawLine(347,255,357,255);
			g.drawArc(330,255,40,20,180,180);
		}
		else if(s.equals("SAD"))
		{
			g.drawOval(300,200,100,100);
			g.drawOval(320,220,15,15);
			g.drawOval(365,220,15,15);
			g.drawLine(347,240,347,255);
			g.drawLine(347,255,357,255);
			g.drawArc(330,270,40,20,0,180);
		}
		else if(s.equals("BLANK"))
		{
			g.drawOval(300,200,100,100);
			g.drawOval(320,220,15,15);
			g.drawOval(365,220,15,15);
			g.drawLine(347,240,347,255);
			g.drawLine(347,255,357,255);
			g.drawLine(330,280,370,280);
		}
		else if(s.equals("BLINK"))
		{
			g.drawOval(300,200,100,100);
			g.drawArc(320,220,15,15,340,120);
//			g.drawOval(320,220,15,15);
			g.drawOval(365,220,15,15);
			g.drawLine(347,240,347,255);
			g.drawLine(347,255,357,255);
			g.drawArc(330,255,40,20,180,180);
		}
	}
}