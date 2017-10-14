package packreptile;
import packanimalia.*;

public class Reptile extends Animalia
{
int size_of_eggs_cm;
public Reptile(int a,int b,int c)
{   super(a,b);  size_of_eggs_cm=c;   }
public void show()
{
super.show();
System.out.println(" SIZE OF EGGS:"+size_of_eggs_cm+" CENTIMETER");
}  }
