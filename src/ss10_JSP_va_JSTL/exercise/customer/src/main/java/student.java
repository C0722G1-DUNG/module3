import java.time.LocalDate;

public class student {
    private String name;
    private String birth_of_day;
    private String address;
    private String image;

    public student(String name, String birth_of_day, String address, String image) {
        this.name = name;
        this.birth_of_day = birth_of_day;
        this.address = address;
        this.image = image;
    }

    public student() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth_of_day() {
        return birth_of_day;
    }

    public void setBirth_of_day(String birth_of_day) {
        this.birth_of_day = birth_of_day;
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
