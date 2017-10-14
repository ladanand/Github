import java.util.*;

class Pbox
{

  public static void main(String[] arg)
  {
    int[] p = {12,16,9,5,4,8,3,7,11,10,1,6,2,13,15,14};
	int[] pi = new int[16];
	String plaintext;
	
	//String dec;
	System.out.println("Enter plain Text : ");
	Scanner sc = new Scanner(System.in);
	plaintext = sc.next();
	
	char[] ch =plaintext.toCharArray();
	
	char[] c = new char[plaintext.length()];
	StringBuilder cip = new StringBuilder();
	StringBuilder dec = new StringBuilder();
	int len = plaintext.length();

	for(int i=0;i<len;i++)
	{
	      int x = p[i];

	  char z = plaintext.charAt(x-1);
	   cip.append(z);
	  
	}
	
	System.out.println(cip);
	 String cp = new String(cip);
	 c = cp.toCharArray();
	for(int i=0;i<16;i++)
	{
	     for(int j=0;j<16;j++)
		 {
		    if(p[j]==i+1)
			{
			   pi[i] = j;
               break;			   
			}
		  } 
		  System.out.println(pi[i]);
	  
	}
	for(int i=0;i<len;i++)
	{
	      int x = pi[i];
         System.out.println(x);
	  char z = cip.charAt(x);
	   dec.append(z);
	  
	}
	System.out.println(dec);
	
  }
}
