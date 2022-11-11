package repository.customer;

import modal.customer.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findAll();
    boolean add(Customer customer);
    boolean update(Customer customer );
    boolean delete(int id);
    Customer findById(int id);
    List<Customer> searchByName(String searchByName);
}
