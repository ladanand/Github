class Algorithm
{
	static int n=10;
	boolean mutex=false;
	int empty=n;
	int full=0;

	synchronized void produce()
	{
		int item=1;
		try
		{
			if(mutex)
			{	wait();		}
			else 
			{
			full++; empty--;
			mutex=true;
			notify();
			System.out.println("\n PRODUCING: "+"FULL= "+full+" EMPTY= "+empty);
			}
		}
		catch(Exception e){	 }
	}
	synchronized void consume()
	{
		int item=1;
		try
		{
			if(!mutex)
			{	wait();	}
			else 
			{
			full--; empty++;
			mutex=false;
			notify();
			System.out.println("\n CONSUMING: "+"FULL= "+full+" EMPTY= "+empty);
			}
		}
		catch(Exception e){ }
	}
} 

class Producer implements Runnable
{
	Thread t;
	String s;
	Algorithm a;

	Producer(String sa,Algorithm a)
	{
		t=new Thread(this,sa);
		s=sa;
		this.a=a;
		t.start();
	}
	public void run()
	{
		while(true)
		{
			if(a.full==1 || a.full==0 )
			{
				System.out.println("\n PRODUCER WAKES UP--->>");
				a.produce();
				a.produce();
				System.out.println("\n PRODUCER GOES TO SLEEP--->>");
				try
				{	Thread.sleep(3000);	}
				catch(Exception e){ }
			}
		}
	}
}

class Consumer implements Runnable
{
	Thread t;
	String s;
	Algorithm a;

	Consumer(String sa,Algorithm a)
	{
		t=new Thread(this,sa);
		s=sa;
		this.a=a;
		t.start();
	}
	public void run()
	{
		while(true)
		{
			if(a.empty<a.n )
			{
				a.consume();
				a.consume();
				try
				{	Thread.sleep(3000);	}
				catch(Exception e){ }
			}
		}
	}
}
public class Semaphores
{
public static void main(String[] st)
{
Algorithm a=new Algorithm();
Producer p=new Producer("Producer",a);
Consumer c=new Consumer("Consumer",a);
System.out.println("\n USE CTRL+ALT TO STOP-->>");
}
} 