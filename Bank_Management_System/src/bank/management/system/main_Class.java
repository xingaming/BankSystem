package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class main_Class extends JFrame implements ActionListener {
    JButton b1,b2,b3,b4,b5,b6,b7;
    String pin;
    main_Class(String pin){
        this.pin = pin;

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/atm.png"));
        Image i2 = i1.getImage().getScaledInstance(1550,1000, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel l3 = new JLabel(i3);
        l3.setBounds(0,0,1550,1000);
        add(l3);

        JLabel label = new JLabel("Please Seclect Your Transaction");
        label.setBounds(475,490,700,35);
        label.setForeground(Color.BLACK);
        label.setFont(new Font("System",Font.BOLD,26));
        l3.add(label);

        b1 = new JButton("Deposit");
        b1.setForeground(Color.WHITE);
        b1.setBackground(new Color(65,125,128));
        b1.setBounds(470, 530,150,35);
        b1.addActionListener(this);
        l3.add(b1);

        b2 = new JButton("Cash WithDraw");
        b2.setForeground(Color.WHITE);
        b2.setBackground(new Color(65,125,128));
        b2.setBounds(728, 530,150,35);
        b2.addActionListener(this);
        l3.add(b2);

        b3 = new JButton("Fash Cash");
        b3.setForeground(Color.WHITE);
        b3.setBackground(new Color(65,125,128));
        b3.setBounds(470, 570,150,35);
        b3.addActionListener(this);
        l3.add(b3);

        b4 = new JButton("Mini Statement");
        b4.setForeground(Color.WHITE);
        b4.setBackground(new Color(65,125,128));
        b4.setBounds(728, 610,150,35);
        b4.addActionListener(this);
        l3.add(b4);

        b5 = new JButton("Pin Change");
        b5.setForeground(Color.WHITE);
        b5.setBackground(new Color(65,125,128));
        b5.setBounds(470, 610,150,35);
        b5.addActionListener(this);
        l3.add(b5);

        b6 = new JButton("Balance Enquitry");
        b6.setForeground(Color.WHITE);
        b6.setBackground(new Color(65,125,128));
        b6.setBounds(728, 570,150,35);
        b6.addActionListener(this);
        l3.add(b6);

        b7 = new JButton("EXIT");
        b7.setForeground(Color.WHITE);
        b7.setBackground(new Color(65,125,128));
        b7.setBounds(470, 650,150,35);
        b7.addActionListener(this);
        l3.add(b7);

        setLayout(null);
        setSize(1550,1080);
        setLocation(0,0);
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==b1){
            new Deposit(pin);
            setVisible(false);
        } else if (e.getSource()==b7) {
            System.exit(0);
        } else if (e.getSource()==b2) {
            new Withdraw(pin);
            setVisible(false);
        } else if (e.getSource()==b6) {
            new BalanceEnquriy(pin);
            setVisible(false);
        } else if (e.getSource()==b3) {
            new FastCash(pin);
            setVisible(false);
        } else if (e.getSource()==b5) {
            new Pin(pin);
            setVisible(false);
        } else if (e.getSource()==b4) {
            new mini(pin);
            setVisible(false);
        }
    }

    public static void main(String[] args) {
        new main_Class("");
    }
}
