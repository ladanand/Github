import java.io.*;

class NagativeValueException extends Exception
{
double a=0;
	NagativeValueException(double b)
	{	a=b;	}
	public String toString()
	{	return "\n ***VALUE "+a+" IS NAGATIVE, IT IS NOT ALLOWED***";	}
}
interface Shape
{
void findArea();
void findVolume();
}

class Cube implements Shape
{
double len,wid,hgt;
double area,volume;

Cube(double l,double w,double h)
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

class Sphere implements Shape
{
double red,area,volume;

Sphere(double r)
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

public class ShapeException
{
	static void check(double d) throws NagativeValueException
	{
		if(d<0)
		{	throw new NagativeValueException(d);	}
	}
	
public static void main(String[] st) throws Exception
{
String s;
int i=0;
double len,wid,hgt,red;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

do
{
try
{
System.out.println("\n MENU: ");
System.out.println("\n 1.FOR CUBE:");
System.out.println("\n 2.FOR SPHERE:");
System.out.println("\n 3.FOR EXIT:");
System.out.print("\n ENTER CHOICE: ");
s=br.readLine();
i=Integer.parseInt(s);

if(i==1)
{
System.out.println("\n FOR CUBE: ");
System.out.print("\n ENTER LENGTH: ");
s=br.readLine();
len=Double.parseDouble(s);	check(len);
System.out.print("\n ENTER WIDTH: ");
s=br.readLine();
wid=Double.parseDouble(s);	check(wid);
System.out.print("\n ENTER HEIGHT: ");
s=br.readLine();
hgt=Double.parseDouble(s);	check(hgt);
Cube cb=new Cube(len,wid,hgt);
cb.findArea();
cb.findVolume();
}
else if(i==2)
{
System.out.println("\n FOR SPHERE: ");
System.out.print("\n ENTER REDIOUS: ");
s=br.readLine();
red=Double.parseDouble(s);	check(red);

Sphere sp=new Sphere(red);
sp.findArea();
sp.findVolume();
}
else if(i==3)
{
System.out.println("\n EXIT FROM PROGRAM...");
}
else
{
System.out.println("\n PLEASE ENTER VALID CHOICE...");
}
}
catch(NumberFormatException nf)
{	System.out.println("\n ***ENTER PROPER NUMBER DATA TYPE***");	}
catch(NagativeValueException nv)
{	System.out.println(nv);		}
}while(i!=3);
}  }