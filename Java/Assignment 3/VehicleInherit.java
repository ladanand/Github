class Vehicle
{
int eng_cap;
String fuel;
Vehicle(int e,String f)
{ eng_cap=e;  fuel=f;  }
void showVeh()
{
System.out.println(" ENGINE CAPACITY: "+eng_cap);
System.out.println(" FUEL TYPE: "+fuel);
}  }

class Flying extends Vehicle
{
int height,pass_cap;
Flying(int e,String f,int h,int p)
{  super(e,f);  height=h;  pass_cap=p;  }
void showFly()
{
showVeh();
System.out.println(" HEIGHT: "+height+" ft.");
}  }

class Helicopter extends Flying
{
int fans;
Helicopter(int e,String f,int h,int p,int fn)
{  super(e,f,h,p);  fans=fn;  }
void showHel()
{
showFly();
System.out.println(" NO. OF FANS: "+fans);
}  }

class Plane extends Flying
{
int ahost;
Plane(int e,String f,int h,int p,int a)
{  super(e,f,h,p);  ahost=a;  }
void showPla()
{
showFly();
System.out.println(" AIRHOSTESES: "+ahost);
}  }

class Water extends Vehicle
{
int speed,load_cap;
Water(int e,String f,int s,int l)
{  super(e,f);  speed=s;  load_cap=l;  }
void showWat()
{
showVeh();
System.out.println(" SPEED: "+speed);
System.out.println(" LOAD CAPACITY: "+load_cap+" ton");
}  }

class Steamer extends Water
{
int pass_cap;
Steamer(int e,String f,int s,int l,int p)
{  super(e,f,s,l);  pass_cap=p;  }
void showSte()
{
showWat();
System.out.println(" PASSANGER CAPACITY: "+pass_cap);
}  }

class Hovercraft extends Water
{
int height;
Hovercraft(int e,String f,int s,int l,int h)
{  super(e,f,s,l);  height=h;  }
void showHov()
{
showWat();
System.out.println(" HEIGHT FROM WATER: "+height+" mm.");
}  }

class Submarin extends Water
{
int depth;
Submarin(int e,String f,int s,int l,int d)
{  super(e,f,s,l);  depth=d;  }
void showSub()
{
showWat();
System.out.println(" DEPTH IN WATER: "+depth+" ft.");
}  }

class Land extends Vehicle
{
int speed,pass_cap;
Land(int e,String f,int s,int p)
{  super(e,f);  speed=s;  pass_cap=p;  }
void showLan()
{
showVeh();
System.out.println(" SPEED: "+speed+" kmph");
System.out.println(" PASSANGER CAPACITY: "+pass_cap);
}  }

class Bus extends Land
{
int wheels;
Bus(int e,String f,int s,int p,int w)
{  super(e,f,s,p);  wheels=w;  }
void showBus()
{
showLan();
System.out.println(" WHEELS: "+wheels);
}  }

class Car extends Land
{
int wheels,doors;
Car(int e,String f,int s,int p,int w,int d)
{  super(e,f,s,p);  wheels=w;  doors=d;  }
void showCar()
{
showLan();
System.out.println(" WHEELS: "+wheels);
System.out.println(" DOORS: "+doors);
}  }

class Train extends Land
{
String dest;
Train(int e,String f,int s,int p,String d)
{  super(e,f,s,p);  dest=d;  }
void showTra()
{
showLan();
System.out.println(" DESTINATION: "+dest);
}  }

public class VehicleInherit
{
public static void main(String[] s)
{
Bus luxury=new Bus(500,"DIESEl",70,40,6);
Car nano=new Car(300,"CNG",80,4,4,4);
Train metro=new Train(2000,"ELECTRICITY",150,1000,"DELHI");
Steamer st=new Steamer(5000,"DIESEL AND COAL",60,550,2500);
Hovercraft hc=new Hovercraft(8000,"DIESEL",55,300,600);
Submarin sm=new Submarin(6600,"URENIUM",50,20,600);
Helicopter AH_64D=new Helicopter(5000,"DIESEL",5000,10,2);
Plane boing747=new Plane(8000,"PETROL",15000,500,20);

System.out.println("\n FOR LUXURY BUS : ");
luxury.showBus();
System.out.println("\n FOR NANO CAR: ");
nano.showCar();
System.out.println("\n FOR METRO TRAIN: ");
metro.showTra();
System.out.println("\n FOR STEAMER: ");
st.showSte();
System.out.println("\n FOR HOVERCRAFT: ");
hc.showHov();
System.out.println("\n FOR SUBMARIN: ");
sm.showSub();
System.out.println("\n FOR HELICOPTER AH_64D: ");
AH_64D.showHel();
System.out.println("\n FOR PLANE BOING 747: ");
boing747.showPla();
}  }