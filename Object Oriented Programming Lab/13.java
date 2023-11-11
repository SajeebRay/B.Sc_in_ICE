import java.awt.*;
import java.applet.Applet;

public class Poly extends Applet {
    public void paint(Graphics g){
        int xPoints[] = {20,120,220,20};
        int yPoints[] = {20,120,20,20};
        int nPoints = xPoints.length;
        g.drawPolygon(xPoints, yPoints, nPoints);
    }
}