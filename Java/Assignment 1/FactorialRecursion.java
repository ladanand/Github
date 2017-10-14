import java.io.*;
class Fact 
{
   int fct;
Fact()
{  fct=1;  }
int findFact(int x)
{
   if(x==1)
   {  return 1;  }
   fct=x*findFact(x-1);
return fct;
}  }

public class FactorialRecursion
{
public static void main(String s[]) throws Exception
{
int no,a;
String ch;

Fact f=new Fact();
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

System.out.print("\n ENTER NUMBER: ");
ch=br.readLine();
a=Integer.parseInt(ch);
no=f.findFact(a);
System.out.println("\n FACTORIAL: "+no);
}  }
