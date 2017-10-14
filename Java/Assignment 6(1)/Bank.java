
class Deposit
{
boolean flag;

Deposit()
{
flag=false;
}
synchronized void depo(String s,long ac)
{
try
{
if (flag)
{
wait();
}
else
{
flag=true;
}

System.out.println("AccountNo: "+ac+" "+s+" is on Deposit Window..");

try
{
Thread.sleep(1000);
}
catch(Exception e) { }
System.out.println("AccountNo: "+ac+" "+s+" is exiting from Deposit Window..");
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
{
flag=false;
}
synchronized void with(String s,long ac)
{
try
{
if (flag)
{
wait();
}
else
{
flag=true;
}

System.out.println("AccountNo: "+ac+" "+s+" is on Withdraw Window..");

try
{
Thread.sleep(1000);
}
catch(Exception e) { }
System.out.println("AccountNo: "+ac+" "+s+" is exiting from Withdraw Window..");
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

Customer(String s,long ac,Deposit d,Withdraw w)
{
t=new Thread (this,s);
d1=d;
w1=w;
this.s=s;
a=ac;
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
		{
		Thread.sleep(1000);
		}
		catch(Exception e)
		{ }
		}
	if( d1.flag || !w1.flag )
		{
		w1.with(s,a);
		try
		{
		Thread.sleep(1000);
		}
		catch(Exception e)
		{ }
		}
}
}
}

public class Bank
{
public static void main(String[] st)
{
Deposit d=new Deposit();
Withdraw w=new Withdraw();
Customer c1=new Customer("Rahul",12324353,d,w);
Customer c2=new Customer("Rasik",12323434,d,w);
Customer c3=new Customer("Dush",12324432,d,w);
}
}