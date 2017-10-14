package packplantae;
import packliving.*;

public class Plantae extends LivingOrganism
{
int height_meter;
public Plantae(int a,int b)
{   super(a);  height_meter=b;   }
public void show()
{
super.show();
System.out.println(" HEIGHT OF THE PLANT: "+height_meter+" METER");
}  }
