package co.edu.sena.project2687365.model.repository;

import co.edu.sena.project2687365.model.Category;
import co.edu.sena.project2687365.model.Product;
import co.edu.sena.project2687365.model.User;

import java.sql.SQLException;

public class TestProductRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<Product> repository = new ProductRepositoryImpl();

        System.out.println("//----- saveObj Insert -----//");

        Product productInsert = new Product();
        Category categoryInsert = new Category();

        productInsert.setProduct_name("tranformer");
        productInsert.setProduct_value(12000);

        categoryInsert.setCategory_id(4); // Establecer el ID de la categoría
        categoryInsert.setCategory_name("juguetes");

        productInsert.setCategory(categoryInsert);

        repository.saveObj(productInsert);
    }
}
