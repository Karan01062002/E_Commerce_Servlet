//package com.codeWithKaran.controller;
//
//
//import com.codeWithKaran.dao.ProductDao;
//import com.codeWithKaran.model.Product;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet("/search")
//public class SearchController extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Get the search query from the request
//        String query = request.getParameter("query");
//
//        // Call DAO method to search for products based on the query
//        List<Product> searchResults = searchProducts(query);
//
//        // Set search results in request attribute
//        request.setAttribute("searchResults", searchResults);
//
//        // Forward the request to the search results JSP
//        request.getRequestDispatcher("search-results.jsp").forward(request, response);
//    }
//
//    private List<Product> searchProducts(String query) {
//        // Here you can implement the logic to search for products in your database
//        // For simplicity, let's assume we have a ProductDao class with a method to search products
//        ProductDao productDao = new ProductDao();
//        return productDao.searchProducts(query);
//    }
//}
//
