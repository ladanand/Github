import java.io.*;
import java.util.*;

class Dice
{
 int dice;
 Random ra;
 BufferedReader br;
 String sa;
 int[][] sn={{25,10},{35,1},{50,32},{63,13},{85,22},{96,9}};
 int[][] la={{6,28},{15,31},{34,47},{51,62},{69,84},{75,95}};

	synchronized int throwDice()
	{
		br=new BufferedReader(new InputStreamReader(System.in));
		try
		{
			sa=br.readLine();
		}
		catch(Exception e)
		{	 }
		ra=new Random();
		dice=ra.nextInt(6);
		return ++dice;
	}
}

class Player implements Runnable
{
	Thread t;
	Dice d;
	String name;
	int pos,n;
 
	Player(String s,Dice dc)
	{
		t=new Thread(this,s);
		name=s;
		d=dc;
		pos=0;
		n=0;
		t.start();
	}

	public void run()
	{
		while(pos<=100)
		{
			n=d.throwDice();
			System.out.println("\n PREVIOUS SCORE: "+pos+"\n DICE: "+n);
			if((pos+n)<=100)
			{
				pos=pos+n;
			}
			for(int i=0;i<d.sn.length;i++)
			{
				if(pos==d.sn[i][0])
				{
					pos=d.sn[i][1];
					System.out.println("---PLAYER "+name+" HAS BEEN BEATEN BY SNAKE---");
					break;
				}
			}
			for(int j=0;j<d.la.length;j++)
			{
				if(pos==d.la[j][0])
				{
					pos=d.la[j][1];
					System.out.println("---PLAYER "+name+" HAS GOT LADDER---");
					break;
				}
			}
			System.out.println(" PLAYER "+name+" CURRENT VALUE: "+pos); 
			if(pos==100)
			{
				System.out.println("\n*****"+name+" WINS*****");
				System.exit(0);
			}
			try
			{
				Thread.sleep(1000);
			}
			catch(InterruptedException ie)
			{	}
	
		}
	}
}


public class GameSnakeLadder
{
public static void main(String[] a)
{

Dice d =new Dice();
Player p1=new Player("PARESH",d);
Player p2=new Player("KING",d);
System.out.println("\n PRESS ENTER TO THROW DICE-->>");
}
}