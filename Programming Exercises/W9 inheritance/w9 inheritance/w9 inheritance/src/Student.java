public class Student extends Person { // extend == inherit from

    String department;
    String degree;

    Student(String name, int id, String department, String degree) {
        super(name, id); // call superclass constructor
        this.department = department;
        this.degree = degree;
    }

    @Override
    void print() {
        super.print(); // call superclass print method (deal with name and id)
        System.out.println("Department: " + department);
        System.out.println("Degree: " + degree);
    }
}
