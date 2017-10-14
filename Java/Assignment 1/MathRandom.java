public class MathRandom
{
public static void main(String[] st)
{
double d;   int n=0;
char c;     String s="";

   for(int i=0;i<=10;i++)
   {
   d=Math.random();
   n=(int)(d*4);
   c=(char)(n+65);
   s=s+c;
   }

System.out.print(""+s);
}
}