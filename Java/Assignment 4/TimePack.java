import packsecond.Second;

public class TimePack
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
