package packsecond;
import packminute.*;

public class Second extends Minute
{
int ss;
public Second(int h,int m,int s)
{
super(h,m);  ss=s;
}
public void minus(Second s1,Second s2)
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
public void showTime()
{  System.out.println("\n TIME: "+hh+" : "+mm+" : "+ss);  }
}
