class Vect
{
double x,y,z;

Vect()
{ x=0; y=0; z=0; }

Vect(double a,double b,double c)
{ x=a; y=b; z=c; }

Vect add(Vect v)
{
Vect t=new Vect();
t.x=x+v.x;
t.y=y+v.y;
t.z=z+v.z;
return t;
}

Vect sub(Vect v)
{
Vect t=new Vect();
t.x=x-v.x;
t.y=y-v.y;
t.z=z-v.z;
return t;
}

double dotProd(Vect v)
{
double d;
d=(x*v.x)+(y*v.y)+(z*v.z);
return d;
}

Vect crossProd(Vect v)
{
Vect t=new Vect();
t.x=(y*v.z)-(z*v.y);
t.y=(z*v.x)-(x*v.z);
t.z=(x*v.y)-(y*v.x);
return t;
}

void show()
{ System.out.println("\n ("+x+")i+("+y+")j+("+z+")k"); }
}

public class Vector
{
public static void main(String st[])
{
Vect v1=new Vect(2,4,6);
Vect v2=new Vect(1,3,5);
Vect v3;
double dot;

v1.show(); v2.show();

v3=v1.add(v2);
System.out.println("\n\n ADDITION...");
v3.show();
v3=v1.sub(v2);
System.out.println("\n\n SUBTRACTION...");
v3.show();
dot=v1.dotProd(v2);
System.out.println("\n\n DOT PRODUCT: "+dot);
v3=v1.crossProd(v2);
System.out.println("\n\n CROSS PRODUCT...");
v3.show();
} }
