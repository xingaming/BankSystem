package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;

public class BalanceEnquriy extends JFrame implements ActionListener {
    JButton b1;
    String pin;
    BalanceEnquriy(String pin){
        this.pin = pin;
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/atm.png"));
        Image i2 = i1.getImage().getScaledInstance(1550,1000, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel l3 = new JLabel(i3);
        l3.setBounds(0,0,1550,1000);
        add(l3);

        JLabel label1 = new JLabel("Your Current Balance is Rs");
        label1.setForeground(Color.BLACK);
        label1.setFont(new Font("System",Font.BOLD,16));
        label1.setBounds(510,480,400,35);
        l3.add(label1);

        JLabel label2 = new JLabel();
        label2.setForeground(Color.BLACK);
        label2.setFont(new Font("System",Font.BOLD,16));
        label2.setBounds(510,510,400,35);
        l3.add(label2);

        b1 = new JButton("Back");
        b1.setBounds(720,600,150,35);
        b1.setBackground(new Color(65,125,128));
        b1.setForeground(Color.WHITE);
        b1.addActionListener(this);
        l3.add(b1);

        int balance = 0;
        try{
            Con c = new Con();
            ResultSet resultSet = c.statement.executeQuery("SELECT * from bank where pin = "+pin+"");
            while (resultSet.next()){
                if(resultSet.getString("type").equals("Deposit")){
                    balance += Integer.parseInt(resultSet.getString("amount"));
                }else{
                    balance -= Integer.parseInt(resultSet.getString("amount"));
                }
            }
        }catch (Exception E){
            E.printStackTrace();
        }

        label2.setText("" + balance);

        setLayout(null);
        setSize(1550,1080);
        setLocation(0,0);
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        setVisible(false);
        new main_Class(pin);
    }

    public static void main(String[] args) {
        new BalanceEnquriy("");
    }
}
