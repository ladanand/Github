import java.util.Scanner;
 
public class Affine
{
    public static String encryptionMessage(String Msg, int a,int b)
    {
        String CTxt = "";

        for (int i = 0; i < Msg.length(); i++)
        {
            CTxt = CTxt + (char) ((((a * Msg.charAt(i))+b) % 26) + 65);
        }
        return CTxt;
    }
 
    public static String decryptionMessage(String CTxt, int a,int b)
    {
        String Msg = "";
     
        int a_inv = 0;
        int flag = 0;
		boolean f=false;
        for (int i = 0; i < 26; i++)
        {
            flag = (a * i) % 26;
            if (flag == 1)
            {    
			    f = true;
                a_inv = i;
                System.out.println(i);
				break;
            }
        }
		if(!f)
		{
		  System.out.println("Inverse is not possible for given key");
		  System.exit(0);
		}
        for (int i = 0; i < CTxt.length(); i++)
        {
            Msg = Msg + (char) (((a_inv * ((CTxt.charAt(i))-b) % 26)) + 65);
        }
        return Msg;
    }
 
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the message: ");
        String message = sc.next();
		System.out.println("Enter the key value for Multiplication: ");
		int keyM = sc.nextInt();
		System.out.println("Enter the key value for Additive: ");
		int keyA = sc.nextInt();
		message = message.toUpperCase();
        System.out.println("Message is :" + message);
        
         String enc= encryptionMessage(message , keyM,keyA);
		System.out.println("Encrypted Message is : " +enc);
        System.out.println("Decrypted Message is: "
                + decryptionMessage(enc,keyM,keyA));
        sc.close();
    }
}

