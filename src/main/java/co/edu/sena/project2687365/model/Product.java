package co.edu.sena.project2687365.model;

public class Product {
    private Integer product_id;
    private String product_name;
    private Integer product_value;
    private Category category;

    public Product() {
    }

    public Product(Integer product_id, String product_name, Integer product_value, Category category) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_value = product_value;
        this.category = category;
    }

    public Product(String product_name, int product_value, int category_id) {
        this.product_name = product_name;
        this.product_value = product_value;
        this.category = new Category(category_id, null);
    }



    public Product(Integer productId, String productName, int productValue, int categoryId) {
    }


    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public Integer getProduct_value() {
        return product_value;
    }

    public void setProduct_value(Integer product_value) {
        this.product_value = product_value;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_value=" + product_value +
                ", category=" + category +
                '}';
    }
}
