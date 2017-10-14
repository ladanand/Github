import java.io.*;
import java.util.*;

class Dice
{
 BufferedReader br;
 Random ra;
 String s;

	Dice()
	{
	 br=new BufferedReader(new InputStreamReader(System.in));
	 ra=new Random();
	}

	synchronized int throwDice(String n)
	{
		try{	s=br.readLine();	}
		catch(Exception e){	}

		int no=ra.nextInt(6);
		no++;
		return no;
	}

}

class Player implements Runnable
{
 String name;
 Thread t;
 int pos,n;
 int board[][];
 Dice dd;

	Player(String nm,Dice d,int b[][])
	{
	 t=new Thread(this,nm);
	 name=nm;
	 dd=d;
	 board=b;
	 pos=0;
	 n=0;
	 t.start();
	}

	public void run()
	{
		while(pos<=50)
		{
			n=dd.throwDice(name);
			System.out.println("\n\n PREV SCORE FOR "+name+" WAS: "+pos);
			System.out.println("\n DICE: "+n);

			if((pos+n)<=50)
			{   pos=pos+n;   }

			int old=pos;
			for(int i=0;i<board.length;i++)
			{
				if(board[i][0]==pos)
				{	pos=board[i][1];	}
			}
			if(old<pos)
			{	System.out.println("\n--- "+name+" HAS GOT LADDER ---");	}
			if(old>pos)
			{	System.out.println("\n--- "+name+" HAS BEEN BEATEN BY SNAKE---");	}

			System.out.println("\n NEW SCORE FOR "+name+" IS: "+pos);

			if(pos==50)
			{
				System.out.println("\n ***********************************");
				System.out.println("\n ***** "+name+" HAS WON THE GAME *****");
				System.out.println("\n ***********************************");
				System.exit(0);
			}
			try{	Thread.sleep(1000);	}
			catch(Exception e){	}
		}
	}
}

public class SnakeLadder
{
	public static void main(String args[]) throws Exception
	{
		Dice dd=new Dice();
		int board[][]={{5,27},{19,38},{26,33},{12,1},{40,21},{48,3}};
		Player p1=new Player("PARESH",dd,board);
		Player p2=new Player("KING",dd,board);
		System.out.println("\n PRESS ENTER TO THROW DICE-->>");
	}
}