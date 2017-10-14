import java.io.*;
class TimeRangeException extends Exception
{
	int a;
	TimeRangeException(int a)
	{	this.a=a;	}
	public String toString()
	{	return "\n ENTRED VALUE FOR TIME IS INVALID...";	}
} 
class Hour
{
int hh;
Hour(int h)
{  hh=h;  }
}

class Minute extends Hour
{
int mm;
Minute(int h,int m)
{
super(h);  mm=m;
}  }

class Second extends Minute
{
int ss;
Second(int h,int m,int s)
{
super(h,m);  ss=s;
}
void minus(Second s1,Second s2)
{
int sec,sec1,sec2;
sec1=(s1.hh*3600)+(s1.mm*60)+(s1.ss);
sec2=(s2.hh*3600)+(s2.mm*60)+(s2.ss);
   
   if(sec1>sec2)
   {   sec=sec1-sec2;   }
   else
   {   sec=sec2-sec1;   }
hh=sec/3600;
sec=sec%3600;
mm=sec/60;
sec=sec%60;
ss=sec;
}
void showTime()
{  System.out.println("\n TIME: "+hh+" : "+mm+" : "+ss);  }
}

public class TimeInheritException
{
	static void check_min_sec(int a) throws TimeRangeException
	{
		if(a<0 || a>59)
		{	throw new TimeRangeException(a);	}
	}
	static void check_hour(int a) throws TimeRangeException
	{
		if(a<0 || a>23)
		{	throw new TimeRangeException(a);	}
	}
public static void main(String[] st) throws Exception
{
	int h1=0,h2=0,s1=0,s2=0,m1=0,m2=0;	
	BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
	try
	{
		System.out.println("\n ENTER FOR TIME 1 :");
		System.out.print("\n HOUR: ");
		h1=Integer.parseInt(br.readLine());
		check_hour(h1);
		System.out.print("\n MINUTE: ");
		m1=Integer.parseInt(br.readLine());
		check_min_sec(m1);
		System.out.print("\n SECOND: ");
		s1=Integer.parseInt(br.readLine());
		check_min_sec(s1);
		
		System.out.println("\n ENTER FOR TIME 2 :");
		System.out.print("\n HOUR: ");
		h2=Integer.parseInt(br.readLine());
		check_hour(h2);
		System.out.print("\n MINUTE: ");
		m2=Integer.parseInt(br.readLine());
		check_min_sec(m2);
		System.out.print("\n SECOND: ");
		s2=Integer.parseInt(br.readLine());
		check_min_sec(s2);
	}
	catch(NumberFormatException e)
	{	System.out.println("\n PLEASE ENTER PROPER NUMBER DATA TYPE...");	}
	catch(TimeRangeException tr)
	{	System.out.println(tr);	}

	Second t1=new Second(h1,m1,s1);
	Second t2=new Second(h2,m2,s2);
	Second t3=new Second(0,0,0);
	t1.showTime();
	t2.showTime();
	t3.minus(t1,t2);
	System.out.println("\n\n TIME ELAPSED: ");
	t3.showTime();
}
}