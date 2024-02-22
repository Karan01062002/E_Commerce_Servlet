package com.codeWithKaran.model;


public class User {
    private int id;
    private String email;
    private String password;
    private Cart userCart;


    public Cart getUserCart() {
        return userCart;
    }

    public void setUserCart(Cart userCart) {
        this.userCart = userCart;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



}


