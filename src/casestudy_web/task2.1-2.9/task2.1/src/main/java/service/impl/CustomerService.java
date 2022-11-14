package service.impl;

import modal.customer.Customer;
import repository.customer.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.customer.ICustomerService;
import validation.Validation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    private ICustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public Map<String,String> add(Customer customer) {
        Map<String,String> errorMap = new HashMap<>();
        if (customer.getName().equals("")){
            errorMap.put("name","không được để trống");
        }
        else if (!Validation.checkName(customer.getName())){
            errorMap.put("name","không đúng định dạng");
        }
        if (errorMap.isEmpty()){
            customerRepository.add(customer);
        }
//        kiểm tra dữ liệu , oke thì mới lưu
return errorMap;
    }

    @Override
    public boolean update(Customer customer) {
        return customerRepository.update(customer);
    }

    @Override
    public boolean delete(int id) {
        return customerRepository.delete(id);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public List<Customer> searchByName(String searchByName) {
        return customerRepository.searchByName(searchByName==null?"":searchByName);
    }
}
