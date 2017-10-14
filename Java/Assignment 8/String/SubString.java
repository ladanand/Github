import java.util.*;
import java.io.*;

public class SubString
{
public static void main(String args[]) throws Exception
{
String sub;
int i,k,index,count,total;
String str[]=new String[5];
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

	for(i=0;i<5;i++)
	{
	System.out.print("\n ENTER STRING "+(i+1)+" : ");
	str[i]=br.readLine();
	}
	System.out.print("\n ENTER SUBSTRING TO FIND: ");
	sub=br.readLine();

total=0;
for(k=0;k<5;k++)
{
i=0; index=0; count=0;
System.out.print("\n OCCURANCE OF SUBSTRING '"+sub+"' IN STRING "+(k+1)+" IS AT PLACES: ");
while(true)
{
String temp=str[k].substring(i);
index=temp.indexOf(sub);
	if(index!=-1)
	{
	total++;
	count++;
	i=i+index+1;
	System.out.print("  "+i);
	}
	else
	{ break; }
}
System.out.println("\n\n TOTAL OCCURANCE OF SUBSTRING '"+sub+"' IN STRING "+(k+1)+" IS: "+count);
System.out.println("\n\n");
}
System.out.println("\n\n TOTAL OCCURANCE OF SUBSTRING '"+sub+"' IN ALL STRINGS IS: "+total);
} }