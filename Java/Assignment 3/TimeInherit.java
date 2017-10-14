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

public class TimeInherit
{
public static void main(String[] st)
{
Second s1=new Second(10,30,50);
Second s2=new Second(5,40,20);
Second s3=new Second(0,0,0);

s1.showTime();
s2.showTime();
s3.minus(s1,s2);
System.out.println("\n\n TIME ELAPSED: ");
s3.showTime();
}   }