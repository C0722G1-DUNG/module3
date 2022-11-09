package service.impl;

import modal.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;

public class UserService implements IUserService {
private static IUserRepository iUserRepository = new UserRepository();
    @Override
    public List<User> findAll() {
        return iUserRepository.findAll();
    }

    @Override
    public boolean add(User user) {
        return iUserRepository.add(user);
    }

    @Override
    public boolean delete(int id) {
        return iUserRepository.delete(id);
    }

    @Override
    public User selectUser(int id) {
        return iUserRepository.selectUser(id);
    }

    @Override
    public List<User> searchByCountry(String country) {
        return iUserRepository.searchByCountry(country==null ? "": country);
    }

    @Override
    public void insertUserStore(User user) {
         iUserRepository.insertUserStore(user);
    }

    @Override
    public User getUserById(int id) {
        return iUserRepository.getUserById(id);
    }

    @Override
    public boolean update(User user) {
        return iUserRepository.update(user);
    }
}
