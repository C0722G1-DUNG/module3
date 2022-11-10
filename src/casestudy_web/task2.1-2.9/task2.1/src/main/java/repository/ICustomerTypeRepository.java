package repository;

import modal.CustomerType;

import java.util.List;

public interface ICustomerTypeRepository {
    List<CustomerType> findAll();
}
