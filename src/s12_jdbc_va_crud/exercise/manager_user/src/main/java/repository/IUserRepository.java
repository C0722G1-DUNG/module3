package repository;

import modal.User;

import java.util.List;

public interface IUserRepository {
    List<User> findAll();
    boolean add(User user);
    boolean delete(int id);
    User selectUser(int id);
    boolean update(User user);
    List<User>  searchByCountry(String country);
}
