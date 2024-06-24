public class Main {
    public static void main(String[] args) {
       Person  person1 = new Person ("Dave",1234);
       person1.print();

       Student stu1;
       stu1 = new Student("Mahin",23643001,"cs","compsc");
       stu1.print();

       Academic aca1 = new Academic("Ali",2345,"programming");
       aca1.print();

       InternationalStudent intStu1 = new InternationalStudent("Ilyas",2332,"Dept","mast","Spain");
       intStu1.print();
    }
}