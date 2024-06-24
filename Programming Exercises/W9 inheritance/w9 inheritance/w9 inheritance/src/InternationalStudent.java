class InternationalStudent extends Student {

    String country;

    InternationalStudent(String name, int id, String department, String degree, String country) {
        super(name, id, department, degree);
        this.country = country;
    }

    @Override
    void print() {
        super.print();
        System.out.println("Country: " + country);
    }

}
