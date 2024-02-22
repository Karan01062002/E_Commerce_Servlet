package com.codeWithKaran.dao;

import com.codeWithKaran.database.Database_db;
import com.codeWithKaran.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private static Connection con;
    public ProductDao() {
        con = Database_db.getConnection();
    }
    private static String selectAllProductSQL = "SELECT * FROM product";
    private static String INSERT_CART="INSERT INTO Cart (productId, userId, count) VALUES (?, ?, ?)";;

    public static List<Product> selectAllProducts() {
        List<Product> products = new ArrayList<Product>();
        try {
            PreparedStatement ps = con.prepareStatement(selectAllProductSQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(Integer.parseInt(rs.getString("id")));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getInt("price"));
                product.setImage(rs.getString("image"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public void addProduct(int id,int userid) {
        try {
            PreparedStatement ps = con.prepareStatement(INSERT_CART);
            ps.setInt(1,id);
            ps.setInt(2,userid);
            ps.setInt(3,1);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


//
//    public List<Product> searchProducts(String query) {
//        List<Product> searchResults = new ArrayList<>();
//        try {
//            // Create SQL query to search for products with title matching the query
//            String searchSQL = "SELECT * FROM product WHERE title LIKE ?";
//            PreparedStatement ps = con.prepareStatement(searchSQL);
//            ps.setString(1, "%" + query + "%");
//
//            // Execute the query
//            ResultSet rs = ps.executeQuery();
//
//            // Process the results
//            while (rs.next()) {
//                Product product = new Product();
//                product.setId(rs.getInt("id"));
//                product.setTitle(rs.getString("title"));
//                product.setPrice(rs.getDouble("price"));
//                product.setImage(rs.getString("image"));
//                searchResults.add(product);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return searchResults;
//    }

}
