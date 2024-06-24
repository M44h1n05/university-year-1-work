public class Academic extends Person {

    String subject;

    Academic(String name, int id, String subject) {
        super(name, id);
        this.subject = subject;
    }

    @Override
    void print() {
        super.print();
        System.out.println("Subject: " + subject);
    }}
