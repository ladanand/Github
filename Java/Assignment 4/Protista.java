package packprotista;
import packliving.*;

public class Protista extends LivingOrganism
{
int size_nm;
public Protista(int a,int b)
{   super(a);  size_nm=b;   }
public void show()
{
super.show();
System.out.println(" SIZE: "+size_nm+" NANOMETER");
}  }
