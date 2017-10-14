import java.util.*;
import java.io.*;

public class DaysBetween
{
public static void main(String args[]) throws IOException
{ 
int dd=0,mm=0,yy=0;
long time1,time2,days;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

	System.out.println("\n DATE 1: ");
	try
   	{
	System.out.print(" ENTER DAY: ");
   	dd=Integer.parseInt(br.readLine());
	System.out.print(" ENTER MONTH: ");
   	mm=Integer.parseInt(br.readLine());
	System.out.print(" ENTER YEAR: ");
   	yy=Integer.parseInt(br.readLine());
   	}
   	catch(NumberFormatException n){		}

System.out.println("\n DATE 1 IS "+dd+"/"+mm+"/"+yy);
Date d1=new Date(yy,mm,dd);

	System.out.println("\n DATE 2: ");
	try
	{
	System.out.print(" ENTER DAY: ");
   	dd=Integer.parseInt(br.readLine());
	System.out.print(" ENTER MONTH: ");
   	mm=Integer.parseInt(br.readLine());
	System.out.print(" ENTER YEAR: ");
   	yy=Integer.parseInt(br.readLine());
	}
	catch(NumberFormatException n){		}

System.out.println("\n DATE 2 IS "+dd+"/"+mm+"/"+yy);
Date d2=new Date(yy,mm,dd);

time1=d1.getTime();
time2=d2.getTime();
days=((time1-time2)/(24*60*60*1000));

	if(days<0)
	{
	days=days*(-1);
	System.out.println("\n DATE 2 IS BIGGER...");
	}

System.out.println("\n NUMBER OF DAYS BETWEEN THESE TWO DATES ARE : "+days);
}  }
