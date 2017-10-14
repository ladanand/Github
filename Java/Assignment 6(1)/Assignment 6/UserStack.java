class MyStack
{
int stack[]=new int[10];
int top=-1;
}

class Push extends MyStack implements Runnable
{
 Thread t;
	Push()
	{
		t=new Thread(this,"Push");
		t.start();
	}
	public void run()
	{
		try
		{
			for(int i=0;i<10;i++)
			{
				System.out.println("\n PUSHING INTO STACK VALUE: "+(i+1));
				stack[++top]=i;
				Thread.sleep(1000);
			}
		}
		catch(Exception e)
		{	System.out.println("\n PUSH THREAD INTERRUPTED...");	}
	}
}
class Pop implements Runnable
{
 Thread t;
 Push p1=new Push();

	Pop()
	{
		t=new Thread(this,"Pop");
		t.start();
	}
	
	public void run()
	{
		try
		{
			for(int i=0;i<10;i++)
			{
				if(p1.top<0)
				{	System.out.println("\n STACK IS EMPTY...");	}
				else
				{	System.out.println("\n POPING VALUE FROM STACK:  "+p1.stack[p1.top--]);	}
			Thread.sleep(1500);
			}
		}
		catch(Exception e)
		{	System.out.println("POP THREAD INTERUPTED...");	}
	}
}

public class UserStack
{
public static void main(String[] st)
{
System.out.println("\n***STACK OPERATION STARTED***");
Pop p1=new Pop();
}
}