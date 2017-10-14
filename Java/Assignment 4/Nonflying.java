package packnonflying;
import packmammal.*;

public class Nonflying extends Mammal
{
int no_of_legs;
public Nonflying(int a,int b,int c)
{   super(a,b);  no_of_legs=c;   }
public void show()
{
super.show();
System.out.println(" IT HAS "+no_of_legs+" LEGS");
}  }
