import java.io.*;
import packcube.Cube;
import packsphere.Sphere;

public class ShapePack
{
public static void main(String[] st) throws Exception
{
String s;
double len,wid,hgt,red;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

System.out.println("\n FOR CUBE: ");
System.out.print("\n ENTER LENGTH: ");
s=br.readLine();
len=Double.parseDouble(s);
System.out.print("\n ENTER WIDTH: ");
s=br.readLine();
wid=Double.parseDouble(s);
System.out.print("\n ENTER HEIGHT: ");
s=br.readLine();
hgt=Double.parseDouble(s);

Cube cb=new Cube(len,wid,hgt);
cb.findArea();
cb.findVolume();

System.out.println("\n FOR SPHERE: ");
System.out.print("\n ENTER REDIOUS: ");
s=br.readLine();
red=Double.parseDouble(s);

Sphere sp=new Sphere(red);
sp.findArea();
sp.findVolume();
}  }
