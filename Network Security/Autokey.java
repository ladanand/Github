public class Autokey {

	public static void main(String[] args) {
		String plainText = "NETWORK";
		int secretKey = 12;
		System.out.println("Plain Text Before Encryption: " + plainText);
		String encryptedText = encrypt(plainText, secretKey);
		System.out.println("Encrypted Text After Encryption: " + encryptedText);
		String decryptedText = decrypt(encryptedText, secretKey);
		System.out.println("Decrypted Text After Decryption: " + decryptedText);
	}

	private static String encrypt(String plainText, int secretKey) {
		StringBuffer encryptedString = new StringBuffer();
		int encryptedInt;
		int newkey = secretKey;
		for (int i = 0; i < plainText.length(); i++) {
			int plainTextInt = (int) (plainText.charAt(i) - 'A');
			encryptedInt = (plainTextInt + secretKey) % 26;
			encryptedString.append((char) ((encryptedInt) + (int) 'A'));
			System.out.println("key : "+newkey + "plaint text :" + (char)(plainTextInt+65) +"cipher : "+(char)(encryptedInt+65));
			newkey = plainTextInt;
		}
		return encryptedString.toString();
	}

	private static String decrypt(String decryptedText, int secretKey) {
		StringBuffer decryptedString = new StringBuffer();
		int decryptedInt;
		int newkey = secretKey;
		for (int i = 0; i < decryptedText.length(); i++) {
			int decryptedTextInt = (int) (decryptedText.charAt(i) - 'A');
			
			decryptedInt = decryptedTextInt - secretKey;
			if (decryptedInt < 1)
				{decryptedInt += 26;
				 }
			decryptedString.append((char) ((decryptedInt) + (int) 'A'));
			System.out.println("key : "+newkey + "plaint text :" + (char)(decryptedInt +65) +"cipher : "+(char)(decryptedTextInt+65));
			newkey = decryptedInt;
		}
		return decryptedString.toString();
	}
}

