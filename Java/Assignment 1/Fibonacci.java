class Fibo
{
int a,b,sum;

Fibo()
{  a=0;  b=1;  sum=a+b;  }

void findFibo()
{
System.out.print("\n FIBONACCI SERIES: "+a+" "+b);
   while(sum<50)
   {
   System.out.print(" "+sum);
   a=b;  b=sum;
   sum=a+b;
   }
}  }

public class Fibonacci
{
public static void main(String s[])
{
Fibo f=new Fibo();
f.findFibo();
}  }