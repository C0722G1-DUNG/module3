package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Iphone13", 15, "Camera kép", "Duy Dũng"));
        productList.add(new Product(2, "Iphone 14 ", 25, "OLED 6.1 Super Retina XDR,12 MP", "Duy Dũng"));
        productList.add(new Product(3, "Iphone Xr", 15, "LCD, 6.1, Super Retina", "Duy Dũng"));
    }

    @Override
    public List<Product> findAll() {
//        kết nối dữ liệu
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i <productList.size(); i++) {
            if (productList.get(i).getId()==id){
                productList.set(i,product);
            }
        }
    }

    @Override
    public void remove(int id) {
        for (int i = 0; i < productList.size() ; i++) {
            if (productList.get(i).getId() == id){
                productList.remove(productList.get(i));
            }
        }
    }

    @Override
    public Product findById(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                return productList.get(i);
            }
        }
        return null;
    }
}
