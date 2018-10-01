/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zuluform;
import javax.swing.*;
import java.awt.*;
import java.awt.Color;
import java.awt.event.*;

 
public class smashbox_form {
  static JTextField f_Name;
     static JTextField l_Name;
     static JTextField telephone;
     static JTextField DOB;
     static JRadioButton male;
     static JRadioButton female;
     static JButton cancel;
     static JButton addUser;
     

   
    public static void main(String[] args) {
         //creating JFrame
     JFrame frame= new JFrame("Add user form");
     frame.setVisible(true);
     frame.setBounds(500,100,700,600);
     frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
     frame.setResizable(true);
     
     //setting background color of frame
     Container c= frame.getContentPane();
     c.setLayout(null);
     c.setBackground(Color.black);
     
     
     //creating font style and size for heading
     Font f = new Font("calibri", Font.BOLD,24);
     
     //creating jlabel for heading
     JLabel heading= new JLabel();
     heading.setBounds(50,150,100,40);
     heading.setText("Add new user");
     heading.setFont(f);
     
     //global font syle for all componenets
     Font f1 = new Font("Calibri", Font.BOLD,14);
   
     //creating jlabel for name
     JLabel fNamee= new JLabel("First Name");
     fNamee.setBounds(50,80,100,30);
    //creating jtextfield for name
    fName= new JTextField();
    fName.setBounds(180,80,180,30);
    
    //creating jlabel for last name
     JLabel lNamee= new JLabel("Last Name");
     lNamee.setBounds(50,120,150,30);
     //creating jtextfield for last name
      lName= new JTextField();
    lName.setBounds(180,120,180,30);
    
    //creating jlabel for telephone
    JLabel telePhone= new JLabel("Telephone");
    telePhone.setBounds(50,160,150,20);
    //creating jtextfield for telephone
    telephone= new JTextField();
    telephone.setBounds(180,160,180,30);
    
    //creating jlabel for DOB
    JLabel DateOfBirth= new JLabel("Date Of Birth");
    DateOfBirth.setBounds(50,180,100,40);
    //creating jtextfield for DOB
    dateOfBirth= new JTextField();
    dateOfBirth.setBounds(180,200,180,30);
    
    //creating jlabel for gender
    JLabel gendeer= new JLabel("Gender");
    gendeer.setBounds(50,230,150,30);
    //seting cursor for components
    Cursor cur= new Cursor(Cursor.HAND_CURSOR);
    //creating jradiobutton for male
    male=new JRadioButton("Male");
    male.setBounds(260,230,80,30);
    male.setBackground(Color.white);
    male.setCursor(cur);
    //creating Jradiobutton for the female
    female= new JRadioButton("Female");
    female.setBounds(360,230,80,30);
    female.setBackground(Color.white);
    female.setCursor(cur);
    //creating buttongroup
    ButtonGroup gender= new ButtonGroup();
    gender.add(male);
    gender.add(female);
    
    //creating jbutton for cancel
    clear= new JButton("Cancel");
    clear.setBounds(200,500,100,40);
    clear.setCursor(cur);
    
    //creating jbutton for submit
    saveUser= new JButton("Add User");
    saveUser.setBounds(400,500,120,40);
    saveUser.setCursor(cur);
    
 saveUser.addActionListener(new ActionListener(){
 public void actionPerformed(ActionEvent event){
 saveUser_action(event); 
 } 
 }); 
    //applying font
    f_Name.setFont(f1);
    l_Name.setFont(f1);
    telePhone.setFont(f1);
    DOB.setFont(f1);
    gender.setFont(f1)
    male.setFont(f1);
    female.setFont(f1);
    clear.setFont(f1);
    saveUser.setFont(f1);
    
    
    //adding components to container
    c.add(f_Name);
    c.add(l_Name);
    c.add(telePhone);
    c.add(DateOfBirth);
    c.add(gender);
    c.add(f_Name);
    c.add(l_Name);
    c.add(telephone);
    c.add(dateOfBirth);
    c.add(male);
    c.add(female);
    c.add(cancel);
    c.add(addUser);
    }
 public static void  saveUser_action(ActionEvent event){
 
 String fNamee=fName.getText();
 String lNamee=lName.getText();
 String telePhone=telephone.getText();
  String DateOfBirth=dateOfBirth.getText();
 String gender="Male";
 if(female.isSelected()==true)
 gender="Female";

}
private boolean validate_login(String username,String password) {
   try{           
       Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javademo?" + "user=root&password=");     
       PreparedStatement pst = conn.prepareStatement("Select * from login where username=? and password=?");
       pst.setString(1, username); 
       pst.setString(2, password);
       ResultSet rs = pst.executeQuery();                        
       if(rs.next())            
           return true;    
       else
           return false;            
   }
   catch(Exception e){
       e.printStackTrace();
       return false;
   }       
}
private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
    System.exit(0);
}
}
