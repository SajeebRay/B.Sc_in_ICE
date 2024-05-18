import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Form_SKR extends JFrame implements ActionListener {
    private JTextField nameField, rollField, phoneField, sessionField, departmentField, courseIdField, courseNameField;
    private JButton submitButton;
    private JLabel nameLabel, rollLabel, phoneLabel, sessionLabel, departmentLabel, courseIdLabel, courseNameLabel, regLabel, msgLabel;
    private JPanel panel;

    public Form_SKR() {
        setTitle("Registration Form");
        setSize(500, 600);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        panel = new JPanel();
        panel.setLayout(null);
        panel.setBackground(new Color(173, 216, 230)); // Sky blue background color

        regLabel = new JLabel("Registration Form");
        regLabel.setBounds(50, 20, 400, 30);
        regLabel.setFont(new Font("Arial", Font.BOLD, 24));
        panel.add(regLabel);

        nameLabel = new JLabel("Name");
        nameLabel.setBounds(50, 80, 100, 20);
        panel.add(nameLabel);
        nameField = new JTextField();
        nameField.setBounds(160, 80, 250, 20);
        panel.add(nameField);

        rollLabel = new JLabel("Roll");
        rollLabel.setBounds(50, 120, 100, 20);
        panel.add(rollLabel);
        rollField = new JTextField();
        rollField.setBounds(160, 120, 250, 20);
        panel.add(rollField);

        phoneLabel = new JLabel("Phone");
        phoneLabel.setBounds(50, 160, 100, 20);
        panel.add(phoneLabel);
        phoneField = new JTextField();
        phoneField.setBounds(160, 160, 250, 20);
        panel.add(phoneField);

        sessionLabel = new JLabel("Session");
        sessionLabel.setBounds(50, 200, 100, 20);
        panel.add(sessionLabel);
        sessionField = new JTextField();
        sessionField.setBounds(160, 200, 250, 20);
        panel.add(sessionField);

        departmentLabel = new JLabel("Department");
        departmentLabel.setBounds(50, 240, 100, 20);
        panel.add(departmentLabel);
        departmentField = new JTextField();
        departmentField.setBounds(160, 240, 250, 20);
        panel.add(departmentField);

        courseIdLabel = new JLabel("Course ID");
        courseIdLabel.setBounds(50, 280, 100, 20);
        panel.add(courseIdLabel);
        courseIdField = new JTextField();
        courseIdField.setBounds(160, 280, 250, 20);
        panel.add(courseIdField);

        courseNameLabel = new JLabel("Course Name");
        courseNameLabel.setBounds(50, 320, 100, 20);
        panel.add(courseNameLabel);
        courseNameField = new JTextField();
        courseNameField.setBounds(160, 320, 250, 20);
        panel.add(courseNameField);

        submitButton = new JButton("Submit");
        submitButton.setBounds(200, 380, 100, 30);
        submitButton.addActionListener(this);
        panel.add(submitButton);

        msgLabel = new JLabel("Not Submitted Yet");
        msgLabel.setBounds(180, 420, 150, 20);
        panel.add(msgLabel);

        add(panel);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        msgLabel.setText("Submitted Successfully");
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new Form_SKR());
    }
}
