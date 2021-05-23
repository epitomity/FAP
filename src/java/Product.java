
public class Product {

    private String id;
    private String name;
    private int qty;
    private int price;
    private String img;

    public Product() {
    }

    public Product(String id, int qty, int price, String img) {
        this.id = id;
        this.qty = qty;
        this.price = price;
        this.img = img;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }
    
    public void addQty() {
        this.qty++;
    }
    
    public void minusQty() {
        this.qty--;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

}
