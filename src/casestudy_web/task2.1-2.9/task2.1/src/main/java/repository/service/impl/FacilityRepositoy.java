package repository.service.impl;

import modal.service.Facility;
import modal.service.FacilityType;
import modal.service.RentType;
import repository.BaseRepository;
import repository.service.IFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepositoy implements IFacilityRepository {
    private static final String SELECT_ALL ="select f.*,ft.name,rt.name from facility f join facility_type ft on ft.id = f.facility_type_id join rent_type rt on rt.id = f.facility_type_id where flag =1;";
    @Override
    public List<Facility> findAll() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int idFacility = resultSet.getInt("id");
                String nameFacility = resultSet.getString("name");
                int areaFacility =resultSet.getInt("area");
                double cost =resultSet.getDouble("cost");
                int maxPeople = resultSet.getInt("max_people");
                int idRentType = resultSet.getInt("id");
                String nameRentType = resultSet.getString("name");
                RentType rentType = new RentType(idRentType,nameRentType);
                int idFacilityType = resultSet.getInt("id");
                String nameFacilityType = resultSet.getString("name");
                FacilityType facilityType = new FacilityType(idFacilityType,nameFacilityType);
                String standardRoom = resultSet.getString("standard_room");
                String descriptionOtherConvenience = resultSet.getString("description_other_covenience");
                double pollArea = resultSet.getDouble("poll_area");
                int numberOfFloors = resultSet.getInt("number_of_floors");
                String facilityFree = resultSet.getString("facility_free");
                Facility facility = new Facility(idFacility,nameFacility,areaFacility,cost,maxPeople,rentType,facilityType,standardRoom,descriptionOtherConvenience,pollArea,numberOfFloors,facilityFree);
                facilityList.add(facility);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }
}
