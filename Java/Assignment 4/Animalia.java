package packanimalia;
import packliving.*;

public class Animalia extends LivingOrganism
{
int size_meter;
public Animalia(int a,int b)
{   super(a);  size_meter=b;   }
public void show()
{
super.show();
System.out.println(" SIZE OF ANIMAL: "+size_meter+" METER");
}  }
