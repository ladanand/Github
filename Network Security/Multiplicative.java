import java.util.Scanner;
 
public class Multiplicative
{
    public static String encryptionMessage(String Msg, int a)
    {
        String CTxt = "";
       // int a = 3;
        int b = 6;
        for (int i = 0; i < Msg.length(); i++)
        {
            CTxt = CTxt + (char) ((((a * Msg.charAt(i))) % 26) + 65);
        }
        return CTxt;
    }
 
    public static String decryptionMessage(String CTxt, int a)
    {
        String Msg = "";
      //  int a = 3;
        int b = 6;
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
            Msg = Msg + (char) (((a_inv * ((CTxt.charAt(i))) % 26)) + 65);
        }
        return Msg;
    }
 
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the message: ");
        String message = sc.next();
		System.out.println("Enter the key value: ");
		int key = sc.nextInt();
		message = message.toUpperCase();
        System.out.println("Message is :" + message);
        
         String enc= encryptionMessage(message , key);
		System.out.println("Encrypted Message is : " +enc);
        System.out.println("Decrypted Message is: "
                + decryptionMessage(enc,key));
        sc.close();
    }
}
