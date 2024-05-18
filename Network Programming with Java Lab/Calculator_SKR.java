//             try {..}
//             // Divided by zero handling
//             catch (Exception ex) {
//                 display.setText("Error: Invalid expression");
//             }

//             case "/":
//                 if (num2 == 0) {
//                     throw new ArithmeticException("Division by zero");
//                 }
//                 return num1 / num2;
//             default:
//                 throw new IllegalArgumentException("Invalid operator");

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class Calculator_SKR extends JFrame implements ActionListener {
    JButton[] digitButton, operatorButton;
    JButton equalButton, clearButton;
    JTextArea display;
    StringBuilder expression;
    JPanel buttonPanel;

    public Calculator_SKR() {
        setTitle("Calculator");
        setLayout(new BorderLayout());
        setDefaultCloseOperation(EXIT_ON_CLOSE);

        digitButton = new JButton[10];
        String digits[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
        for(int i = 0; i < 10; i++){
            digitButton[i] = new JButton(digits[i]);
            digitButton[i].addActionListener(this);
        }
        operatorButton = new JButton[4];
        String operators[] = {"+", "-", "*", "/"};
        for(int i = 0; i < 4; i++){
            operatorButton[i] = new JButton(operators[i]);
            operatorButton[i].addActionListener(this);
        }
        equalButton = new JButton("=");
        equalButton.addActionListener(this);
        clearButton = new JButton("C");
        clearButton.addActionListener(this);
        
        display = new JTextArea(2, 20);
        display.setEditable(false);
        buttonPanel = new JPanel(new GridLayout(4,4));
        buttonPanel.add(digitButton[7]);
        buttonPanel.add(digitButton[8]);
        buttonPanel.add(digitButton[9]);
        buttonPanel.add(operatorButton[0]);
        buttonPanel.add(digitButton[4]);
        buttonPanel.add(digitButton[5]);
        buttonPanel.add(digitButton[6]);
        buttonPanel.add(operatorButton[1]);
        buttonPanel.add(digitButton[1]);
        buttonPanel.add(digitButton[2]);
        buttonPanel.add(digitButton[3]);
        buttonPanel.add(operatorButton[2]);
        buttonPanel.add(clearButton);
        buttonPanel.add(digitButton[0]);
        buttonPanel.add(equalButton);
        buttonPanel.add(operatorButton[3]);

        add(display, BorderLayout.NORTH);
        add(buttonPanel, BorderLayout.CENTER);

        expression = new StringBuilder();

        setSize(400, 500);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent e){
        JButton clickedButton = (JButton) e.getSource();
        String text = clickedButton.getText();
        if(Character.isDigit(text.charAt(0))){
            expression.append(text);
            display.setText(expression.toString());
        }
        else if(text.equals("C")){
            expression.setLength(0);
            display.setText("");
        }
        else if(text.equals("=")){
            String[] token = expression.toString().split(" ");
            Double num1 = Double.parseDouble(token[0]);
            String operator = token[1];
            Double num2 = Double.parseDouble(token[2]);
            Double result = evaluate(num1,operator,num2);
            display.setText(expression.toString() + "\n" + result);
        }
        else { // Operator gular jonne
            expression.append(" ").append(text).append(" ");
            display.setText(expression.toString());
        }
    }
    public double evaluate(double num1, String operator, double num2){
        switch(operator){
            case "+":
                return num1 + num2;
            case "-" :
                return num1 - num2;
            case "*":
                return num1 * num2;
            default:
                return num1 / num2;
        }
    }
    public static void main(String[] args){
        SwingUtilities.invokeLater(() -> new Calculator_SKR());
    }
}