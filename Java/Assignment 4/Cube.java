package packcube;
import packshape.*;

public class Cube implements Shape
{
double len,wid,hgt;
double area,volume;

public Cube(double l,double w,double h)
{  len=l;  wid=w;  hgt=h;  }

public void findArea()
{
area=len*wid;
System.out.println("\n AREA: "+area);
}

public void findVolume()
{
volume=area*hgt;
System.out.println("\n VOLUME: "+volume);
}  }
