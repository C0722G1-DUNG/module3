package repository.impl;

import modal.CustomerType;
import repository.BaseRepository;
import repository.ICustomerRepository;
import repository.ICustomerTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    private  static  final String SELECT_ALL_CUSTOMER_TYPE = "SELECT * FROM furama_study.customer_type;";
    @Override
    public List<CustomerType> findAll() {
        List<CustomerType> customerTypes = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_CUSTOMER_TYPE);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int idCustomerType = resultSet.getInt("id");
                String nameCustomerType = resultSet.getString("name");
                CustomerType customerType = new CustomerType(idCustomerType,nameCustomerType);
                customerTypes.add(customerType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypes;
    }
}
