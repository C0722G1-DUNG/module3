import java.time.LocalDate;

public class Student {
    private String name;
    private String birthOfDay;
    private String address;
    private String image;

    public Student(String name, String birth_of_day, String address, String image) {
        this.name = name;
        this.birthOfDay = birth_of_day;
        this.address = address;
        this.image = image;
    }

    public Student() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthOfDay() {
        return birthOfDay;
    }

    public void setBirthOfDay(String birthOfDay) {
        this.birthOfDay = birthOfDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
