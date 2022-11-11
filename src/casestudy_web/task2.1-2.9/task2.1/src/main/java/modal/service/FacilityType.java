package modal.service;

public class FacilityType {
    private int idFacilityType;
    private String nameFacilityType;

    public FacilityType(int idFacilityType, String nameFacilityType) {
        this.idFacilityType = idFacilityType;
        this.nameFacilityType = nameFacilityType;
    }

    public FacilityType() {
    }

    public int getIdFacilityType() {
        return idFacilityType;
    }

    public void setIdFacilityType(int idFacilityType) {
        this.idFacilityType = idFacilityType;
    }

    public String getNameFacilityType() {
        return nameFacilityType;
    }

    public void setNameFacilityType(String nameFacilityType) {
        this.nameFacilityType = nameFacilityType;
    }
}
