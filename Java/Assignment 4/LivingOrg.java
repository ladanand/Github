import packprotista.Protista;
import packplantae.Plantae;
import packreptile.Reptile;
import packflying.Flying;
import packnonflying.Nonflying;
import packmarine.Marine;

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
