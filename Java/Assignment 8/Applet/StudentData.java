import java.applet.*;
import java.awt.*;
import java.awt.event.*;
/**
<applet code="StudentData" width=1000 height=700>
</applet>
*/
public class StudentData extends Applet implements ActionListener 
{
	Font f;
    Label err,lab,list;
    TextField t1;
    TextField t2;
    TextField t3;
    List l;
	String str;
	int flag=0;

    public void init()
    {
        setLayout(null);
		setBackground(Color.cyan);
		
		f=new Font("Arial",Font.BOLD,30);
		lab=new Label("***STUDENT RESULT***");
		lab.setFont(f);
		Label name =new Label("NAME : ");
		Label scls =new Label("CLASS : ");
		Label smks =new Label("MARKS : ");
		lab.setBounds(300,10,400,50);
		name.setBounds(100,100,50,30);
		scls.setBounds(100,150,50,30);
		smks.setBounds(100,200,50,30);
		add(lab); add(name); add(scls); add(smks);

		t1=new TextField();
		t2=new TextField();
		t3=new TextField();
		t1.setBounds(150,100,150,30);
		t2.setBounds(150,150,150,30);
		t3.setBounds(150,200,150,30);
		add(t1); add(t2); add(t3);

		Button save=new Button("SAVE");
		Button delete= new Button("DELETE");
		save.setBounds(100,300,80,40);
		delete.setBounds(200,300,80,40);
		add(save); add(delete);
		
		f=new Font("Arial",Font.BOLD,20);
		list=new Label("List: ");
		list.setFont(f);
		add(list);
		list.setBounds(400,100,50,30);
        l=new List(30,false);
		l.setBounds(400,150,150,300);
		add(l);

		err=new Label("");
		err.setBounds(100,450,500,30);
		err.setForeground(Color.red);
		add(err);

		save.addActionListener(this);
		delete.addActionListener(this);
	}
    public void  actionPerformed(ActionEvent ae)
    {
		str=ae.getActionCommand();
		if(str.equals("SAVE"))
		{
			if (t1.getText().equals("")||t2.getText().equals("")||t3.getText().equals(""))
			{
				err.setText("ENTERED DATA IS INCOMPLETE...");
				repaint();
			}
			else
			{
				l.addItem(t1.getText());
				t1.setText("");
				t2.setText("");
				t3.setText("");
				err.setText("");
				repaint();
			}
        }
		else if (str.equals("DELETE"))
		{
			if(l.getSelectedItem()!=null)
			{
				str=l.getSelectedItem();
       			try{   l.remove(str);  }
				catch(Exception e){}
				err.setText("RECORD FOR STUDENT "+str+" DELETED.");
				repaint();
			}
			else
			{
				err.setText("NO NAME SELECTED...");
			}
        }
    }
	public void paint(Graphics g)
    {
    }
}