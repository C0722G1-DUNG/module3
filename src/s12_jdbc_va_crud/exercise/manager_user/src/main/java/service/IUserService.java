package service;

import modal.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    boolean add(User user);
    boolean delete(int id);
    boolean update(User user);
    User selectUser(int id);
    List<User>  searchByCountry(String country);
}
