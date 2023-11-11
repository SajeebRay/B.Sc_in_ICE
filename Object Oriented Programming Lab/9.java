public class Main{
    static int area(int l, int w){
      return (l*w);
    }
    static int volume(int l, int w, int h){
      return (l*w*h);
    }
    public static void main(String args[])
    {
      int length = 50, width = 7, height = 15;
      System.out.println("Area of the room is: " + area(length, width));
      System.out.println("Volume of the room is: " + volume(length, width, height));
    }
}
/*
Output:
Area of the room is: 350
Volume of the room is: 5250
*/