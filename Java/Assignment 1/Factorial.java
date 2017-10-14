class Fact
{
int no,result;
Fact()
{
no=20;  result=1;
}
void findFact()
{
   for(int i=1;i<=no;i++)
   {  result=result*i;  }
System.out.println("\n FACTORIAL OF "+no+" IS: "+result);
}  }

public class Factorial
{
public static void main(String s[])
{
   Fact f=new Fact();
   f.findFact();
}  }
