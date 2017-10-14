class Add
{
int a,b;

Add()
{
a=20;  b=30;
}

void printSum()
{  System.out.println("\n SUM: "+(a+b));  }
}

public class Addition
{
public static void main(String s[])
{
Add a=new Add();
a.printSum();
}  }