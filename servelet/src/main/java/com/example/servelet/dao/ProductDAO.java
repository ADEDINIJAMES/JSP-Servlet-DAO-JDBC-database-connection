package com.example.servelet.dao;

import com.example.servelet.config.DatabaseConfiguration;
import com.example.servelet.model.Products;
import com.example.servelet.service.UserService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.logging.Logger;

public class ProductDAO {
  private Logger logger= Logger.getGlobal();
  private Connection connection;
  private UserService connect = () ->{
      Class.forName("com.mysql.cj.jdbc.Driver");
      DatabaseConfiguration configuration = new DatabaseConfiguration();
      Properties properties = new Properties();
      properties.setProperty("User",configuration.getDB_URL());
      properties.setProperty("Password", configuration.getDB_PASSWORD());
      if(connection==null || connection.isClosed()){
          connection= DriverManager.getConnection(configuration.getDB_URL(),configuration.getDB_USERNAME(), configuration.getDB_PASSWORD());
      }
  };
  public Function<Products, Boolean> saveproduct = (product->{
      try{
          connect.compile();

      } catch (SQLException| ClassNotFoundException e) {
          throw new RuntimeException(e);
      }
      String query = "INSERT INTO Store.product (name, quantity, price, category, colour) VALUES (?,?,?,?,?)";
      PreparedStatement preparedStatement = null;
      try{
          preparedStatement = connection.prepareStatement(query);
          preparedStatement.setString(1,product.getName());
          preparedStatement.setLong(2,product.getQuantity());
          preparedStatement.setDouble(3,product.getProductPrice().doubleValue());
          preparedStatement.setString(4, product.getCategory());
          preparedStatement.setString(5, product.getColour());
          return preparedStatement.execute();
      } catch (SQLException e) {
          throw new RuntimeException(e);
      }

  });
  public Function<Products, Boolean> updateProduct =(products -> {
      try{
          connect.compile();


      } catch (SQLException|ClassNotFoundException e) {
          logger.warning("SQL exception"+e.getMessage());
          throw new RuntimeException(e);
      }
      String query ="UPDATE Store.product SET name= ?, quantity = ?, price=?, category= ?, colour= ? WHERE product_Id= ?";
      PreparedStatement preparedStatement= null;
      try{
          preparedStatement = connection.prepareStatement(query);
          preparedStatement.setString(1, products.getName());
          preparedStatement.setLong(2, products.getQuantity());
          preparedStatement.setDouble(3,products.getProductPrice().doubleValue());
          preparedStatement.setString(4, products.getCategory());
          preparedStatement.setString(5, products.getColour());
          return preparedStatement.execute();
      } catch (SQLException e) {
          throw new RuntimeException(e);
      }
  });
  public Supplier<List<Products>> findAllProducts=()->{
      try {
          connect.compile();
      } catch (SQLException| ClassNotFoundException e) {
          logger.warning("SQL exception"+e.getMessage());
          throw new RuntimeException(e);
      }
      List<Products> listOfProduct= new ArrayList<>();
      String query = "SELECT * FROM Store.product";
      PreparedStatement preparedStatement = null;
      try {
          preparedStatement = connection.prepareStatement(query);
          ResultSet resultSet = preparedStatement.executeQuery();
          while(resultSet.next()){
              Products product = Products.builder()
                      .id(resultSet.getLong(1))
                      .name(resultSet.getString(2))
                      .quantity(resultSet.getLong(3))
                      .productPrice(resultSet.getBigDecimal(4))
                      .category(resultSet.getString(5))
                      .colour(resultSet.getString(6))
                      .build();
              listOfProduct.add(product);
          }
          return listOfProduct;
      } catch (SQLException e) {
          throw new RuntimeException(e);
      }
  };
  public Function<Long, Products> findProductById = (id)->{
      try{
          connect.compile();
      } catch (SQLException | ClassNotFoundException e) {
          logger.warning("SQL Exception"+ e.getMessage());
          throw new RuntimeException(e);
      }
      String query ="SELECT * FROM Store.product WHERE product_id = ?";
      PreparedStatement preparedStatement = null;
      try {
          preparedStatement= connection.prepareStatement(query);
          preparedStatement.setLong(1, id);
          ResultSet resultSet = preparedStatement.executeQuery();
          while (resultSet.next()){
              Products product = Products.builder()
                      .id(resultSet.getLong("product_id"))
                      .name(resultSet.getString("name"))
                      .quantity( resultSet.getLong("quantity"))
                      .productPrice(resultSet.getBigDecimal("price"))
                      .category(resultSet.getString("category"))
                      .colour(resultSet.getString("colour"))
              .build();
              return product;

          }
          return null;

      } catch (SQLException e) {
          throw new RuntimeException(e);
      }
  };
    public Function<Long, Products> deleteProduct = (id)->{
        try{
            connect.compile();
        } catch (SQLException | ClassNotFoundException e) {
            logger.warning("SQL Exception"+ e.getMessage());
            throw new RuntimeException(e);
        }
        String query ="DELETE FROM Store.product WHERE product_id =?";
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement= connection.prepareStatement(query);
            preparedStatement.setLong(1, id);
            int row = preparedStatement.executeUpdate();
            if (row>0){
                return Products.builder()
                        .id(id)
                        .build();
            }

            return null;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    };
}