import java.util.*;

class ProductCipher {
public static void main(String args[]) {
System.out.println("Enter the input to be encrypted:");
String substitutionInput = new Scanner(System.in).nextLine();
System.out.println("Enter a number:");
int n = new Scanner(System.in).nextInt();

// Substitution encryption
StringBuffer substitutionOutput = new StringBuffer();
for(int i=0 ; i<substitutionInput.length() ; i++) {
char c = substitutionInput.charAt(i);
substitutionOutput.append((char) ((c+5)));
}
System.out.println("\nSubstituted text:");
System.out.println(substitutionOutput);

// Transposition encryption
int len = substitutionOutput.length();
int m = (int)len/n;
char[][] mat = new char[m][n];
int x = 0;
String transpositionInput = substitutionOutput.toString();
for(int i = 0;i<m ;i++)
  {
    for(int j=0;j<n;j++)
	{
	  if(x<=len)
	  {
	  mat[i][j] =  transpositionInput.charAt(x);
	  x++;
	  }
	  else
	  {
	  mat[i][j] = '/';
	  }
	  System.out.print(mat[i][j]);
	}
	System.out.println();
}
char[][] Tmat = new char[n][m];
StringBuffer transpositionOutput = new StringBuffer();
for(int i = 0;i<n ;i++)
  {
    for(int j=0;j<m;j++)
	{
	 Tmat[i][j] = mat[j][i];
	 transpositionOutput.append(Tmat[i][j]);
	}
 
  }
	

System.out.println("\nFinal encrypted text:");
System.out.println(transpositionOutput);

// Transposition decryption
StringBuffer transpositionPlaintext = new StringBuffer();
for(int i = 0;i<m ;i++)
  {
    for(int j=0;j<n;j++)
	{
	 mat[i][j] = Tmat[j][i];
	transpositionPlaintext.append(mat[i][j]);
	}
 
  }



// Substitution decryption
StringBuffer plaintext = new StringBuffer();
for(int i=0 ; i<transpositionPlaintext.length() ; i++) {
char c = transpositionPlaintext.charAt(i);
plaintext.append((char) ((c-5)));
}

System.out.println("\nPlaintext:");
System.out.println(plaintext);
}
}
