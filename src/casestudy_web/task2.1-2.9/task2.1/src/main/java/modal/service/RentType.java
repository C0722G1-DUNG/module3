package modal.service;

public class RentType {
    private int idRentType;
    private String nameRentType;

    public RentType(int idRentType, String nameRentType) {
        this.idRentType = idRentType;
        this.nameRentType = nameRentType;
    }

    public RentType() {
    }

    public int getIdRentType() {
        return idRentType;
    }

    public void setIdRentType(int idRentType) {
        this.idRentType = idRentType;
    }

    public String getNameRentType() {
        return nameRentType;
    }

    public void setNameRentType(String nameRentType) {
        this.nameRentType = nameRentType;
    }
}
