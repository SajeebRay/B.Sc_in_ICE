import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class Image_SKR extends JFrame{
    JLabel label1;
    File file;
    BufferedImage imageRead;
    ImageIcon imageIcon;

    Image_SKR() throws IOException{
        
        // First Image
        file = new File("C:\\Users\\sajee\\OneDrive\\Desktop\\upload.jpg");
        imageRead = ImageIO.read(file);
        imageIcon = new ImageIcon(imageRead);
        label1 = new JLabel(new ImageIcon(imageIcon.getImage().getScaledInstance(400, 460, Image.SCALE_SMOOTH)));
        add(label1);
        
        setLayout(new FlowLayout());
        setTitle("Course Teacher");
        setSize(500, 500);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setVisible(true);
    }

    public static void main(String[] args) throws IOException{
        new Image_SKR();
    }
}
