package packsphere;
import packshape.*;

public class Sphere implements Shape
{
double red,area,volume;

public Sphere(double r)
{    red=r;   }

public void findArea()
{
area=4*3.14*red*red;
System.out.println("\n AREA: "+area);
}

public void findVolume()
{
volume=(4/3)*3.14*red*red*red;
System.out.println("\n VOLUME: "+volume);
}  }
