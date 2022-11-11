package modal.service;

public class Facility {
    private int idFacility;
    private String nameFacility;
    private int areaFacility;
    private double cost;
    private  int maxPeople;
    private  RentType rentTypeId;
    private FacilityType facilityTypeId;
    private String standardRoom;
    private String descriptionOtherConvenience;
    private  double pollArea;
    private  int numberOfFloors;
    private String facilityFree;
    private int flag;

    public Facility(int idFacility, String nameFacility, int areaFacility, double cost, int maxPeople, RentType rentTypeId, FacilityType facilityTypeId, String standardRoom, String descriptionOtherConvenience, double pollArea, int numberOfFloors, String facilityFree) {
        this.idFacility = idFacility;
        this.nameFacility = nameFacility;
        this.areaFacility = areaFacility;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.pollArea = pollArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
    }

    public Facility(String nameFacility, int areaFacility, double cost, int maxPeople, RentType rentTypeId, FacilityType facilityTypeId, String standardRoom, String descriptionOtherConvenience, double pollArea, int numberOfFloors, String facilityFree) {
        this.nameFacility = nameFacility;
        this.areaFacility = areaFacility;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.pollArea = pollArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
    }

    public int getIdFacility() {
        return idFacility;
    }

    public void setIdFacility(int idFacility) {
        this.idFacility = idFacility;
    }

    public String getNameFacility() {
        return nameFacility;
    }

    public void setNameFacility(String nameFacility) {
        this.nameFacility = nameFacility;
    }

    public int getAreaFacility() {
        return areaFacility;
    }

    public void setAreaFacility(int areaFacility) {
        this.areaFacility = areaFacility;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public RentType getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(RentType rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public FacilityType getFacilityTypeId() {
        return facilityTypeId;
    }

    public void setFacilityTypeId(FacilityType facilityTypeId) {
        this.facilityTypeId = facilityTypeId;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescriptionOtherConvenience() {
        return descriptionOtherConvenience;
    }

    public void setDescriptionOtherConvenience(String descriptionOtherConvenience) {
        this.descriptionOtherConvenience = descriptionOtherConvenience;
    }

    public double getPollArea() {
        return pollArea;
    }

    public void setPollArea(double pollArea) {
        this.pollArea = pollArea;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    public String getFacilityFree() {
        return facilityFree;
    }

    public void setFacilityFree(String facilityFree) {
        this.facilityFree = facilityFree;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }
}
