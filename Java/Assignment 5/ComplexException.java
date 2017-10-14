import java.io.*;
class CompOp
{
double x,y;

CompOp()
{  x=0;  y=0;  }

CompOp(double a,double b)
{  x=a;  y=b;  }

CompOp add(CompOp c)
{
CompOp t=new CompOp();
t.x=x+c.x;
t.y=y+c.y;
return t;
}

CompOp sub(CompOp c)
{
CompOp t=new CompOp();
t.x=x-c.x;
t.y=y-c.y;
return t;
}

CompOp mul(CompOp c)
{
CompOp t=new CompOp();
t.x=(x*c.x)-(y*c.y);
t.y=(x*c.y)+(y*c.x);
return t;
}

CompOp div(CompOp c)
{
double den;
CompOp t=new CompOp();
CompOp no2=new CompOp(c.x,-c.y);
CompOp num;
num=this.mul(no2);
den=Math.sqrt((c.x*c.x)+(c.y*c.y));

t.x=num.x/den;
t.y=num.y/den;
return t;
}

void show()
{  System.out.println(" NUMBER: ("+x+")+("+y+")i");  }
}

public class ComplexException
{
	public static void main(String st[]) throws IOException
	{
		int i1=0,i2=0,r1=0,r2=0;
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		try
		{
			System.out.print("\n ENTER REAL PART OF COMPLEX NUMBER 1:");
			i1=Integer.parseInt(br.readLine());
			System.out.print("\n ENTER IMAGINARY PART OF COMPLEX NUMBER 1:");
			r1=Integer.parseInt(br.readLine());
	    
			System.out.print("\n ENTER REAL PART OF COMPLEX 2:");
			i2=Integer.parseInt(br.readLine());
			System.out.print("\n ENTER IMAGINARY PART OF COMPLEX 2:");
			r2=Integer.parseInt(br.readLine());
		}
		catch(NumberFormatException nf)
		{	System.out.println("\n PLEASE ENTER PROPER NUMBER DATA TYPE... \n");	}

		CompOp co1=new CompOp(i1,r1);
		CompOp co2=new CompOp(i2,r2);
		CompOp co3;

		co1.show();  co2.show();

		co3=co1.add(co2);
		System.out.println("\n ADDITION...");
		co3.show();
		co3=co1.sub(co2);
		System.out.println("\n SUTRACTION...");
		co3.show();
		co3=co1.mul(co2);
		System.out.println("\n MULTIPLICATION...");
		co3.show();
		co3=co1.div(co2);
		System.out.println("\n DIVISION...");
		co3.show();
	}
}
