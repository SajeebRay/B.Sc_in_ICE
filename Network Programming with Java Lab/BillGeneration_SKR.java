import javax.swing.*;
import java.awt.event.*;

public class BillGeneration_SKR extends JFrame implements ActionListener {
    JLabel l;
    JCheckBox cb1, cb2, cb3;
    JTextField tf1, tf2, tf3;
    JButton b;

    BillGeneration_SKR() {
        l = new JLabel("Food Ordering System");
        l.setBounds(50, 50, 300, 20);
        cb1 = new JCheckBox("Pizza @ 100");
        cb1.setBounds(100, 100, 150, 20);
        cb2 = new JCheckBox("Burger @ 30");
        cb2.setBounds(100, 150, 150, 20);
        cb3 = new JCheckBox("Tea @ 10");
        cb3.setBounds(100, 200, 150, 20);

        tf1 = new JTextField();
        tf1.setBounds(260, 100, 50, 20);
        tf2 = new JTextField();
        tf2.setBounds(260, 150, 50, 20);
        tf3 = new JTextField();
        tf3.setBounds(260, 200, 50, 20);

        b = new JButton("Order");
        b.setBounds(100, 250, 80, 30);
        b.addActionListener(this);

        add(l);
        add(cb1);
        add(cb2);
        add(cb3);
        add(tf1);
        add(tf2);
        add(tf3);
        add(b);

        setSize(400, 400);
        setLayout(null);
        setVisible(true);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
    }

    public void actionPerformed(ActionEvent e) {
        float amount = 0;
        String msg = "";
        if (cb1.isSelected() && !tf1.getText().isEmpty()) {
            int quantity = Integer.parseInt(tf1.getText());
            amount += quantity * 100;
            msg = "Pizza: " + quantity + " x 100\n";
        }
        if (cb2.isSelected() && !tf2.getText().isEmpty()) {
            int quantity = Integer.parseInt(tf2.getText());
            amount += quantity * 30;
            msg += "Burger: " + quantity + " x 30\n";
        }
        if (cb3.isSelected() && !tf3.getText().isEmpty()) {
            int quantity = Integer.parseInt(tf3.getText());
            amount += quantity * 10;
            msg += "Tea: " + quantity + " x 10\n";
        }
        msg += "-----------------\n";

        // Create a JOptionPane object and set its background color to aqua
        JOptionPane optionPane = new JOptionPane(msg + "Total: " + amount);
        optionPane.setBackground(new java.awt.Color(0, 255, 255)); // Aqua color
        JDialog dialog = optionPane.createDialog("Order Details");
        dialog.setVisible(true);
    }

    public static void main(String[] args) {
        new BillGeneration_SKR();
    }
}
