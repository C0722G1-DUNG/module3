package repository.impl;

import modal.User;
import repository.BaseRepository;
import repository.IUserRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private static final String SELECT_ALL = "select*from users;";
    private static final String INSERT_USERS ="insert into users(name, email, country) values(?,?,?);";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";
    private static final String FIND_USER = "SELECT * FROM users where country like ?;";



    @Override
    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        {
            try {
                PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
                ResultSet resultSet = ps.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    String country = resultSet.getString("country");
                    User user = new User(id,name,email,country);
                    userList.add(user);

                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return userList;
    }

    @Override
    public boolean add(User user) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_USERS);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getCountry());
            return  ps.executeLargeUpdate()>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_USERS_SQL);
            ps.setInt(1,id);
            return  ps.executeLargeUpdate()>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public User selectUser(int id) {
        User user = null;
        Connection connection = BaseRepository.getConnectDB();
        // Step 1: Establishing a Connection

             // Step 2:Create a statement using connection object
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
        }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return user;
    }

    @Override
    public boolean update(User user) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_USERS_SQL);
            ps.setString(1,user.getName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getCountry());
            ps.setInt(4,user.getId());
            return ps.executeLargeUpdate()>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User>  searchByCountry(String searchByCountry) {
        List<User> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        {
            try {
                PreparedStatement ps = connection.prepareStatement(FIND_USER);
                ps.setString(1,"%"+searchByCountry+"");
                ResultSet resultSet = ps.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    String country = resultSet.getString("country");
                    User user = new User(id,name,email,country);
                    userList.add(user);


                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return userList;
    }

    @Override
    public User getUserById(int id) {
        User user = null;
        List<User> userList = new ArrayList<>();
        String query = "{CALL get_user_by_id(?)}";
Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1,id);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");

                String email = rs.getString("email");

                String country = rs.getString("country");

                 user = new User(id, name, email, country);
                userList.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }

    @Override
    public void insertUserStore(User user) {

    }


}
