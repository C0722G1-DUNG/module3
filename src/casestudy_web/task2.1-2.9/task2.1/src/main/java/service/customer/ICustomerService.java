package service.customer;

import modal.customer.Customer;

import java.util.List;
import java.util.Map;

public interface ICustomerService {
    List<Customer> findAll();
    Map<String,String> add(Customer customer);
    boolean update(Customer customer);
    boolean delete(int id);
    Customer findById(int id);
    List<Customer> searchByName(String searchByName);

}
