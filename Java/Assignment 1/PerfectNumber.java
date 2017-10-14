class Perfect
{
int no,sum,mul,digit,temp;

Perfect()
{
no=123;  temp=no;
sum=0;   mul=1;
digit=0;
}

void checkPerfect()
{
   while(no!=0)
   {
   digit=no%10;
   no=no/10;
   sum=sum+digit;
   mul=mul*digit;
   }
no=temp;
   if(sum==mul)
   {  System.out.println("\n NUMBER "+no+" IS PERFECT...");  }
   else
   {  System.out.println("\n NUMBER "+no+" IS NOT PERFECT..."); }
}  }

public class PerfectNumber
{
public static void main(String s[])
{
Perfect p=new Perfect();
p.checkPerfect();
}  }