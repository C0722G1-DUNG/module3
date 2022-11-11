package repository.impl;

import modal.customer.Customer;
import repository.BaseRepository;
import repository.customer.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static final String SELECT_ALL = "SELECT * FROM furama_study.customer;";
    private static final String INSERT_INTO_CUSTOMER = "INSERT INTO customer (customer_type_id,`name`, date_of_birth, gender, id_card, phone_number, email, address) values (?,?,?,?,?,?,?,?);";
    private static final String SELECT_BY_NAME = "select*from customer where `name` like ? or  address like ?;";
    private static final String DELETE_BY_ID = "delete from customer where id =?;";
    private static final String UPDATE_CUSTOMER = "update customer set customer_type_id = ? , `name`= ?, date_of_birth = ?,gender=?,id_card = ?,phone_number = ?,email= ?,address=? where id = ?;";
    private static final String SELECT_FIND_BY_ID = "select * from customer where id = ?;";

    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int customer_type_id = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("name");
                String date_of_birth = resultSet.getString("date_of_birth");
                boolean gender = resultSet.getBoolean("gender");
                String id_card = resultSet.getString("id_card");
                String phone_number = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                Customer customer = new Customer(id, customer_type_id, name, date_of_birth, gender, id_card, phone_number, email, address);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public boolean add(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_INTO_CUSTOMER);
            ps.setInt(1, customer.getCustomer_type_id());
            ps.setString(2, customer.getName());
            ps.setString(3, customer.getDate_of_birth());
            ps.setBoolean(4, customer.isGender());
            ps.setString(5, customer.getId_card());
            ps.setString(6, customer.getPhone_number());
            ps.setString(7, customer.getEmail());
            ps.setString(8, customer.getAddress());
            return ps.executeLargeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean update(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_CUSTOMER);
            ps.setInt(1, customer.getCustomer_type_id());
            ps.setString(2, customer.getName());
            ps.setString(3, customer.getDate_of_birth());
            ps.setBoolean(4, customer.isGender());
            ps.setString(5, customer.getId_card());
            ps.setString(6, customer.getPhone_number());
            ps.setString(7, customer.getEmail());
            ps.setString(8, customer.getAddress());
            ps.setInt(9, customer.getId());
            return ps.executeLargeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    @Override
    public boolean delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_BY_ID);
            ps.setInt(1, id);
            return ps.executeLargeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Customer findById(int id) {
        Customer customer = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_FIND_BY_ID);

            ps.setInt(1, id);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int customer_type_id = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("name");
                String date_of_birth = resultSet.getString("date_of_birth");
                boolean gender = resultSet.getBoolean("gender");
                String id_card = resultSet.getString("id_card");
                String phone_number = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                customer = new Customer(id, customer_type_id, name, date_of_birth, gender, id_card, phone_number, email, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> searchByName(String searchByName) {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_BY_NAME);
            ps.setString(1, "%" + searchByName + "%");
            ps.setString(2,"%"+searchByName+"%");
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int customer_type_id = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("name");
                String date_of_birth = resultSet.getString("date_of_birth");
                boolean gender = resultSet.getBoolean("gender");
                String id_card = resultSet.getString("id_card");
                String phone_number = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                Customer customer = new Customer(id, customer_type_id, name, date_of_birth, gender, id_card, phone_number, email, address);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }
}
