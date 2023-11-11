class Person{
    int age;
    int roll;
    void display(){
        System.out.println("Age displayed in superclass: " + age);
    }
}
class Student extends Person{
    @Override
    void display(){
        System.out.println("Roll displayed in subclass: " + roll);
    }
}
public class Main{
    public static void main(String args[]){
        Person p = new Person();
        p.age = 21;
        p.display();
        
        Student std = new Student();
        std.roll = 200622;
        std.display();
    }
}

/*
Output:
    Age displayed in superclass: 21
    Roll displayed in subclass: 200622

*/