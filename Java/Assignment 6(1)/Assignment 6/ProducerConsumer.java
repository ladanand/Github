class ItemQueue
{
	int n;
	boolean setflag=false;
	synchronized void get()
	{
		while(!setflag)
		{
			try
			{
				Thread.sleep(1000);
				wait();
			}
			catch(InterruptedException e)
			{	}
		}
		System.out.println("\n GOT ITEM: " +n);
		setflag=false;
		notify();
	}
	synchronized void put(int n)
	{
		while(setflag)
		{
			try
			{	
				Thread.sleep(1000);
				wait();
			}
			catch(InterruptedException e)
			{	}
		}
		this.n=n;
		setflag=true;
		System.out.println("\n PUT ITEM: " +n);
		notify();
	}
}
class Producer implements Runnable
{
	Thread t;
	ItemQueue oq;
	Producer(ItemQueue oq)
	{
		t=new Thread(this,"producer");
		this.oq=oq;
		t.start();
	}
	public void run()
	{
		int i=0;
		while(true)
		{	oq.put(i++);	}
	}
}
class Consumer implements Runnable
{
	Thread t;
	ItemQueue oq;
	Consumer(ItemQueue oq)
	{
		t=new Thread(this,"consumer");
		this.oq=oq;
		t.start();
	}
	public void run()
	{
		while(true)
		{	oq.get();	}
	}
}
class ProducerConsumer
{
	public static void main(String arg[])
	{
		ItemQueue oa=new ItemQueue();
		Producer p=new Producer(oa);
		Consumer c=new Consumer(oa);
		System.out.println("USE CTRL+C TO STOP-->>");
	}
}