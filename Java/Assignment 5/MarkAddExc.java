import java.io.*;
class InvalidMarkException extends Exception
{
int a;
	InvalidMarkException(int a)
	{	this.a=a;	}
	public String toString()
	{	return "\n MARK "+a+" IS INVALID...";	}
}
class AddMarks
{
	int add(int a,int b)
	{	return(a+b);	}
}
class MarkAddExc
{
	public static void main(String args[]) throws IOException 
	{
		AddMarks ob=new AddMarks();
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		int m1=0,m2=0,t=0;
		try
		{
			System.out.print("\n ENTER MARK 1:");
			m1=Integer.parseInt(br.readLine());
			System.out.print("\n ENTER MARK 2:");
			m2=Integer.parseInt(br.readLine());
		}
		catch(NumberFormatException e)
		{	System.out.println("\n PLEASE ENTER NUMBER DATA TYPE...");	}
		
		t=ob.add(m1,m2);
		try{	check(m1);	}
		catch(InvalidMarkException im)
		{	System.out.println(im);	t=0;	}
		try{	check(m2);	t=0;	}
		catch(InvalidMarkException im)
		{	System.out.println(im);	t=0;	}
		System.out.println("\n MARK 1: "+m1+"\n MARK 2: "+m2);
		System.out.println("\n TOTAL MARKS:"+t);

	}
	static void check(int x) throws InvalidMarkException
	{
		if(x<0 || x>100)
		{	throw new InvalidMarkException(x);	}
	}
}