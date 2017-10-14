import java.applet.*;
import java.util.*;
import java.awt.*;
import java.awt.event.*;

/*
<applet code="DisplayString" width = 1000 height=600>
</applet>
*/

public class DisplayString extends Applet implements ActionListener
{
Label l;
Font f;
TextField tf;
Button b;
Choice fcolor,fsize;
String color,size;
	
public void init()
{
setLayout(null);

l=new Label("Enter Text: ");
l.setBounds(350,50,100,30);
add(l);

tf = new TextField(20);
tf.setBounds(450,50,200,30);
add(tf);

		
fcolor = new Choice();
fcolor.setBounds(350,150,100,300);
fcolor.add("BLUE");
fcolor.add("GREEN");
fcolor.add("PINK");
fcolor.add("YELLOW");
fcolor.add("RED");
add(fcolor);

fsize = new Choice();
fsize.setBounds(550,150,100,300);
fsize.add("10");
fsize.add("20");
fsize.add("30");
fsize.add("40");
fsize.add("50");
fsize.add("60");
fsize.add("70");
fsize.add("80");
fsize.add("90");
fsize.add("100");
add(fsize);

b=new Button("Display Text");
b.setBounds(400,250,200,30);
add(b);
b.addActionListener(this);
}

public void paint(Graphics g)
{
color = fcolor.getSelectedItem();
size = fsize.getSelectedItem();

f= new Font("Arial",Font.BOLD,Integer.parseInt(size));
g.setFont(f);

	if(color.equals("BLUE"))
	{   g.setColor(Color.blue);   }
	else if(color.equals("RED"))
	{   g.setColor(Color.red);    }
	else if(color.equals("GREEN"))
	{   g.setColor(Color.green);  }
	else if(color.equals("PINK"))
	{   g.setColor(Color.pink);   }
	else if(color.equals("YELLOW"))
	{   g.setColor(Color.yellow); }
	
String s= tf.getText();
g.drawString(s,350,400);
}

public void actionPerformed(ActionEvent ae)
{	repaint();	}

}