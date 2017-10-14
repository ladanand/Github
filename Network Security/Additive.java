import java.util.*;

public class Additive {
    public static void main(String[] args) {
         System.out.println("Enter the Message :");
		 Scanner sc = new Scanner(System.in);
		 
        String str = sc.next();
		
		int k = 15;
        String encode = Additive.encode( str, k );
        System.out.println("Encoded String :" +encode);
        System.out.println("Decoded String :" + Additive.encode( encode, 26-k ));
    }
 
    public static String encode(String enc, int offset) {
        offset = offset % 26;
        StringBuilder encoded = new StringBuilder();
		int len = enc.length();
		for(int i = 0; i<len ;i++)
		{
		char c = enc.charAt(i);
                if (c >= 'A' && c<='Z') {
                    encoded.append((char) ('A' + (c - 'A' + offset) % 26 ));
                } else if(c >= 'a' && c<='z')
				{
                    encoded.append((char) ('a' + (c - 'a' + offset) % 26 ));
                }
				else if(c==' '){
			     encoded.append(c);
				}
                     }
        return encoded.toString();   }
}

