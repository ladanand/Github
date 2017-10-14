class LivingOrganism
{
int avg_age;
LivingOrganism(int a)
{   avg_age=a;   }
void show()
{   System.out.println(" AVERAGE AGE:"+avg_age+" YEAR");   }
}

class Protista extends LivingOrganism
{
int size_nm;
Protista(int a,int b)
{   super(a);  size_nm=b;   }
void show()
{
super.show();
System.out.println(" SIZE: "+size_nm+" NANOMETER");
}  }

class Plantae extends LivingOrganism
{
int height_meter;
Plantae(int a,int b)
{   super(a);  height_meter=b;   }
void show()
{
super.show();
System.out.println(" HEIGHT OF THE PLANT: "+height_meter+" METER");
}  }

class Animalia extends LivingOrganism
{
int size_meter;
Animalia(int a,int b)
{   super(a);  size_meter=b;   }
void show()
{
super.show();
System.out.println(" SIZE OF ANIMAL: "+size_meter+" METER");
}  }

class Reptile extends Animalia
{
int size_of_eggs_cm;
Reptile(int a,int b,int c)
{   super(a,b);  size_of_eggs_cm=c;   }
void show()
{
super.show();
System.out.println(" SIZE OF EGGS:"+size_of_eggs_cm+" CENTIMETER");
}  }

class Mammal extends Animalia
{
Mammal(int a,int b)
{   super(a,b);   }
void show()
{   super.show();   }
}

class Flying extends Mammal
{
Flying(int a,int b)
{   super(a,b);   }
void show()
{
super.show();
System.out.println(" IT HAS TWO WINGS.");
}  }

class Nonflying extends Mammal
{
int no_of_legs;
Nonflying(int a,int b,int c)
{   super(a,b);  no_of_legs=c;   }
void show()
{
super.show();
System.out.println(" IT HAS "+no_of_legs+" LEGS");
}  }

class Marine extends Mammal
{
Marine(int a,int b)
{   super(a,b);   }
void show()
{
super.show();
System.out.println(" IT HAS A FIN.");
}  }

public class LivingOrg
{
public static void main(String[] s)
{
Protista fungi=new Protista(1,2);
Plantae cactus=new Plantae(10,3);
Reptile dove=new Reptile(10,1,5);
Flying bat=new Flying(10,1);
Nonflying human=new Nonflying(60,2,2);
Marine whale=new Marine(30,20);

System.out.println("\n FOR FUNGI");
fungi.show();
System.out.println("\n FOR CACTUS");
cactus.show();
System.out.println("\n FOR DOVE");
dove.show();
System.out.println("\n FOR BAT");
bat.show();
System.out.println("\n FOR HUMAN");
human.show();
System.out.println("\n FOR WHALE");
whale.show();
} }