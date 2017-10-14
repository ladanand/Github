import java.awt.*;
import java.applet.*;
import java.util.*;
import java.awt.Image;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import javax.swing.*;


/*
<applet code="SnakeL" width=1500 height=800>
</applet>
*/


public class SnakeL extends Applet implements Runnable
{
Player1 p1=new Player1("p1");
Player1 p2=new Player1("p2");
Graphics g;
boolean gameOver=false,turn=true;
Random dice;
Thread t;
int s1[][]={{15,48},{30,89},{23,44},{56,83},{17,7},{97,25},{87,46},{80,39}};
int board[][]={{1,50,420},{11,445,375},{21,50,330},{31,445,295},{41,50,240},{51,445,205},{61,50,150},{71,445,115},{81,50,60},{91,445,25}};
Font f;


//System.out.println();

public void init()
{
t=new Thread(this);
p1.x=40;
p1.y=430;
p2.x=35;
p2.y=420;
f=new Font("Arial",Font.BOLD,20);
setFont(f);

t.start();
}

public void run()
{
while(!gameOver)
{
repaint();
try{t.sleep(3000);}
catch(Exception e){}

	dice=new Random();
		if(turn)
		{   
		int temp=dice.nextInt()%7;
			while (temp == 0) 
			{
            temp = dice.nextInt() % 7;
			}
		temp=Math.abs(temp);
		p1.loc+=temp;repaint();
		p1.y=getLocY(p1.loc);
		p1.x=getLocX(p1.loc);
			for(int i=0;i<8;i++)
			{
			if(s1[i][0]==p1.loc)
				{
				repaint();
				System.out.println("p1====="+p1.loc);
				p1.loc=s1[i][1];
				repaint();
				}
			}
			
			if(p1.loc>=100)
			{
			
			//drawString("player 1 won game",500,100);
			 System.out.println("p1 is win");
			 gameOver=true;
			}
		
		
		System.out.println("p1      =" +p1.loc);	
		turn=false;
		
		}
		if(!turn)
		{
		int temp=dice.nextInt()%7;
			while (temp == 0) 
			{
            temp = dice.nextInt() % 7;
			}
		temp=Math.abs(temp);
		p2.loc+=temp;
		p2.y=getLocY2(p2.loc);
		p2.x=getLocX2(p2.loc);
			for(int i=0;i<8;i++)
			{
				if(s1[i][0]==p2.loc)
				{
				repaint();
				System.out.println("p2====="+p2.loc);
				p2.loc=s1[i][1];
				repaint();
			
				}
			}
			
			if(p2.loc>=100)
			{
			
			 System.out.println("p2 is win");
			 gameOver=true;
			}
		System.out.println("p2      =" +p2.loc);	
		turn=true;
		
		}
}

}

public int getLocY(int te)
{ 
int i=0;
	i=(te-1)/10;
	p1.y=(420-(i*44));
return (p1.y);
}		

public int getLocX(int te)
{
int j=0;
int tem=te%20;
    if(te==10 || te==30 || te==50 || te==70 || te==90)
	{
	return (445);
	}
	else if(te==20 || te==40 || te==60 || te==80)
	{
	return (50);
	}
	
    j=(te%10);
	if(tem<=10)
	{
	 return (50+((j-1)*45));
	}
	else
	{
	return (445-((j-1)*45));
	}	
}


public int getLocY2(int te)
{ 
int i=0;
	i=(te-1)/10;
	p2.y=(420-(i*44));
return (p2.y);
}		

public int getLocX2(int te)
{
int j=0;
int tem=te%20;
	if(te==10 || te==30 || te==50 || te==70 || te==90)
	{
	return (445);
	}
	else if(te==0 || te==20 || te==40 || te==60 || te==80)
	{
	return (50);
	}
	
    j=(te%10);
	if(tem<=10)
	{
	 return (50+((j-1)*45));
	}
	else
	{
	return (445-((j-1)*45));
	}	
}
public void paint(Graphics g)
{
ImageIcon img = new ImageIcon("snake_ladder.jpg");
Image image = img.getImage();
g.drawImage(image,20,20,this);
g.setColor(Color.RED);
g.fillRect(p1.x,p1.y,20,20);

g.setColor(Color.GREEN);
g.fillOval(p2.x,p2.y,20,20);

g.setColor(Color.BLACK);


if(p1.loc ==48 || p1.loc ==89 ||p1.loc ==44|| p1.loc ==83)
{
g.drawString("player 2 encounter ladder",600,100);
}
if(p2.loc ==48 || p2.loc ==89 ||p2.loc ==44|| p2.loc ==83)
{
g.drawString("player 2 encounter ladder",600,100);
}

if(p2.loc ==17 || p2.loc ==87 ||p2.loc ==97|| p2.loc ==80)
{
g.drawString("Oooops !! player2 beaten by snake",600,100);
}
if(p1.loc ==17 || p1.loc ==87 ||p1.loc ==97|| p1.loc ==80)
{
g.drawString("Oooops !!player 1 beaten by snake ",600,100);
}

if (p1.loc>=100)
{
g.drawString("player 1 won the game",500,100);
}
if (p2.loc>=100)
{
g.drawString("player 2 won the game",500,100);
}


}

}


class Player1
{

int loc=0,x,y;
Player1(String s)
{
}
}