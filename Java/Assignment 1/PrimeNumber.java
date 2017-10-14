class Prime
{
int no,primeno,flag;

Prime()
{  no=1;  flag=0;  }

void findPrime()
{
System.out.print("\n PRIME NUMBERS: ");
   for(int i=1;i<=20;i++)
   {
   flag=0;
      for(int j=2;j<i;j++)
      {
         if(i%j==0)
         {  flag=1;  }
      }
      if(flag==0)
      {  System.out.print("  "+i);  }
   }
}  }

public class PrimeNumber
{
public static void main(String s[])
{
Prime p=new Prime();
p.findPrime();
}  }