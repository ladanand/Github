class Deposit
{
	boolean flag;
	Deposit()
	{	flag=false;	}
	synchronized void depo(String s,long ac)
	{
		try
		{
			if (flag)
			{	wait();		}
			else
			{	flag=true;	}
			System.out.println("\n ON DEPOSIT WINDOW...");
			System.out.println("   ACCOUNT NUMBER: "+ac+"  NAME: "+s);
			try
			{	Thread.sleep(1000);	}
			catch(Exception e) { 	}
			System.out.println("\n ACCOUNT NUMBER: "+ac+"  NAME: "+s+" EXITING FROM DEPOSIT WINDOW...");
			flag=false;
			notify();
		}
		catch(Exception e) { }
	}
}
class Withdraw
{
	boolean flag;
	Withdraw()
	{	flag=false;	}
	synchronized void with(String s,long ac)
	{
		try
		{
			if (flag)
			{	wait();		}
			else
			{	flag=true;	}
			System.out.println("\n ON WITHDRAW WINDOW...");
			System.out.println("   ACCOUNT NUMBER: "+ac+"  NAME: "+s);
			try
			{	Thread.sleep(1000);	}
			catch(Exception e) { }
			System.out.println("\n ACCOUNT NUMBER: "+ac+"  NAME: "+s+" EXITING FROM WITHDRAW WINDOW...");
			flag=false;
			notify();
		}
		catch(Exception e) { }
	}
}
class Customer implements Runnable
{
	Thread t;
	long a;
	Deposit d1;
	Withdraw w1;
	String s;
	Customer(String st,long ac,Deposit d,Withdraw w)
	{
		t=new Thread (this,st);
		s=st;	a=ac;	d1=d;	w1=w;
		t.start();
	}
	public void run()
	{
		for(int i=0;i<3;i++)
		{
			if( !d1.flag || w1.flag )
			{
				d1.depo(s,a);
				try
				{	Thread.sleep(1000);	}
				catch(Exception e){		}
			}
			if( d1.flag || !w1.flag )
			{
				w1.with(s,a);
				try
				{	Thread.sleep(1000);	}
				catch(Exception e){		}
			}
		}
	}
}

public class MyBank
{
public static void main(String[] st)
{
Deposit d=new Deposit();
Withdraw w=new Withdraw();
Customer c1=new Customer("PARESH",1200345,d,w);
Customer c2=new Customer("NARESH",1200624,d,w);
Customer c3=new Customer("RAJNI",1200567,d,w);
Customer c4=new Customer("KING",1200984,d,w);
}	}