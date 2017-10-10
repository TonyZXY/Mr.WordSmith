package database;

import dto.CustomizedProduct;
import dto.Product;
import dto.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

public class DatabaseProduct {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static HashMap getProducts() {
        HashMap<String, Product> products = new HashMap<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * From products;");
            while (resultSet.next()) {
                products.put(resultSet.getString("product_id"), new Product(resultSet.getString("product_id"),
                        resultSet.getString("product_name"), resultSet.getDouble("price"),
                        resultSet.getInt("stock"), resultSet.getDouble("discount"),
                        resultSet.getInt("reorder_limit"), resultSet.getInt("reorder_time"),
                        resultSet.getString("pro_img1"), resultSet.getString("pro_img2"),
                        resultSet.getString("pro_img3"), resultSet.getString("pro_img4"),
                        resultSet.getString("pro_img5")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }


    public static ArrayList getProductList() {
        ArrayList<Product> products = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM products;");
            while (resultSet.next()) {
                products.add(new Product(resultSet.getString("product_id"),
                        resultSet.getString("product_name"), resultSet.getDouble("price"),
                        resultSet.getInt("stock"), resultSet.getDouble("discount"),
                        resultSet.getInt("reorder_limit"), resultSet.getInt("reorder_time"),
                        resultSet.getString("pro_img1"), resultSet.getString("pro_img2"),
                        resultSet.getString("pro_img3"), resultSet.getString("pro_img4"),
                        resultSet.getString("pro_img5")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public static Product getProduct(String productID) {
        Product product = new Product();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM products WHERE product_id = '" + productID + "';");
            while (resultSet.next()) {
                product.setProductID(resultSet.getString("product_id"));
                product.setProductName(resultSet.getString("product_name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setDiscount(resultSet.getDouble("discount"));
                product.setStock(resultSet.getInt("stock"));
                product.setReorderTime(resultSet.getInt("reorder_time"));
                product.setReorderLimit(resultSet.getInt("reorder_limit"));
                product.setProductImg1(resultSet.getString("pro_img1"));
                product.setProductImg2(resultSet.getString("pro_img2"));
                product.setProductImg3(resultSet.getString("pro_img3"));
                product.setProductImg4(resultSet.getString("pro_img4"));
                product.setProductImg5(resultSet.getString("pro_img5"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }

    public static void AddCustomizeProductToBag(User user, CustomizedProduct product) {
        try {
            int customizedID = 100000001;
            ResultSet resultSet = connection.createStatement().executeQuery("SELECT max(customized_id) FROM customized;");
            if (resultSet.next()) {
                customizedID = resultSet.getInt(1) + 1;
                System.out.println(customizedID);
            }

            String sql = "INSERT INTO customized (customized_id,uid,option1,option2,option3,option4,option5," +
                    "option6,option7,option8,option9,option10,option11,option12,option13,option14,layout) " +
                    "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, customizedID);
            statement.setInt(2, Integer.valueOf(user.getUserID()));
            if (product.isOption1()) {
                statement.setInt(3, 1);
            } else
                statement.setInt(3, 0);
            if (product.isOption2()) {
                statement.setInt(4, 1);
            } else
                statement.setInt(4, 0);
            if (product.isOption3()) {
                statement.setInt(5, 1);
            } else
                statement.setInt(5, 0);
            if (product.isOption4()) {
                statement.setInt(6, 1);
            } else
                statement.setInt(6, 0);
            if (product.isOption5()) {
                statement.setInt(7, 1);
            } else
                statement.setInt(7, 0);
            if (product.isOption6()) {
                statement.setInt(8, 1);
            } else
                statement.setInt(8, 0);
            if (product.isOption7()) {
                statement.setInt(9, 1);
            } else
                statement.setInt(9, 0);
            if (product.isOption8()) {
                statement.setInt(10, 1);
            } else
                statement.setInt(10, 0);
            if (product.isOption9()) {
                statement.setInt(11, 1);
            } else
                statement.setInt(11, 0);
            if (product.isOption10()) {
                statement.setInt(12, 1);
            } else
                statement.setInt(12, 0);
            if (product.isOption11()) {
                statement.setInt(13, 1);
            } else
                statement.setInt(13, 0);
            if (product.isOption12()) {
                statement.setInt(14, 1);
            } else
                statement.setInt(14, 0);
            if (product.isOption13()) {
                statement.setInt(15, 1);
            } else
                statement.setInt(15, 0);
            if (product.isOption14()) {
                statement.setInt(16, 1);
            } else
                statement.setInt(16, 0);
            statement.setString(17, product.getLayout());
            statement.execute();

            Statement selectcustomize = connection.createStatement();
            ResultSet select = selectcustomize.executeQuery("SELECT MWE004 FROM bagTables WHERE bag_id='" + user.getUserID() + "';");
            String custList;
            while (select.next()) {
                custList = select.getString(1);
                System.out.println(custList);
                if (!Objects.equals(custList, "")) {
                    custList += "," + customizedID;
                    Statement update = connection.createStatement();
                    update.executeUpdate("UPDATE bagTables SET MWE004 = '" + custList + "';");
                } else {
                    custList += customizedID;
                    Statement update = connection.createStatement();
                    update.executeUpdate("UPDATE bagTables SET MWE004 = '" + custList + "';");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void updateOrderID(int customizeID,int orderID){
        try{
            Statement statement = connection.createStatement();
            statement.executeUpdate("UPDATE customized SET orderid ='"+orderID+"' WHERE customized_id ='"+customizeID+"';");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
