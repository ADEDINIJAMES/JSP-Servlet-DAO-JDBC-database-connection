package com.example.servelet.dao;

import com.example.servelet.config.DatabaseConfiguration;
import com.example.servelet.dto.LoginRequestDto;
import com.example.servelet.model.User;
import com.example.servelet.service.UserService;

import java.math.BigDecimal;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.sql.*;
import java.util.Properties;
import java.util.function.Function;
import java.util.logging.Logger;

public class UserDAO {
    private Logger logger =Logger.getGlobal();
    private Connection connection;

    public UserService connect =()-> {
        Class.forName("com.mysql.cj.jdbc.Driver");
        DatabaseConfiguration configuration = new DatabaseConfiguration();
        Properties properties= new Properties();
        properties.setProperty("User",configuration.getDB_URL());
        properties.setProperty("password",configuration.getDB_PASSWORD());
        if(connection== null|| connection.isClosed()){
           connection = DriverManager.getConnection(configuration.getDB_URL(),configuration.getDB_USERNAME(),configuration.getDB_PASSWORD());
        }


    };
    public Function<User, Boolean> saveUser =(user -> {
        try{
            connect.compile();
        } catch (SQLException|ClassNotFoundException  e) {
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query ="INSERT INTO users(name,password,email,balance)VALUES(?,?,?,?)";
        PreparedStatement preparedStatement= null;
        try {
            preparedStatement= connection.prepareStatement(query);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getEmail());
            preparedStatement.setDouble(4, new BigDecimal(5000000).doubleValue());
            return preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    });
    public Function <User,Boolean>updateUserBalance =( user ->{
        try{
            connect.compile();


        }catch(SQLException| ClassNotFoundException e){
            logger.warning("SQL exception"+ e.getMessage());
            throw new RuntimeException(e);
        }
        String query = "UPDATE Store.users SET balance = ? WHERE userId = ? ";
        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setDouble(1,user.getBalance().doubleValue());
            preparedStatement.setLong(2,user.getId());
        return preparedStatement.execute();
        }catch(SQLException e){
            throw new RuntimeException(e);
        }

    } );
    public Function<LoginRequestDto,User>findUser=(user->{
        try{
            connect.compile();
        } catch (SQLException| ClassNotFoundException e) {
            logger.warning("SQL exception"+ e. getMessage());
            throw new RuntimeException(e);
        }
        String query ="SELECT * FROM users WHERE email=?";
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement= connection.prepareStatement(query);
            preparedStatement.setString(1,user.getEmail());
            ResultSet set= preparedStatement.executeQuery();
            if(set.next()){
                return User.builder()
                        .id(set.getLong(1))
                        .name(set.getString(2))
                        .password(set.getString(3))
                        .email(set.getString(4))
                        .build();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);

        }

return null;
    });
    public Function<LoginRequestDto,User>findAdmin=(user->{
        try{
            connect.compile();
        } catch (SQLException| ClassNotFoundException e) {
            logger.warning("SQL exception"+ e. getMessage());
            throw new RuntimeException(e);
        }
        String query ="SELECT * FROM admin_table WHERE admin_email=?";
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement= connection.prepareStatement(query);
            preparedStatement.setString(1,user.getEmail());
            ResultSet set= preparedStatement.executeQuery();
            if(set.next()){
                return User.builder()
                        .id(set.getLong(1))
                        .name(set.getString(2))
                        .password(set.getString(3))
                        .email(set.getString(4))
                        .build();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);

        }

        return null;
    });
    public Function<Long, User> findUserById = (id->{
        try {
            connect.compile();

        }catch (SQLException| ClassNotFoundException e){
            logger.warning("SQL exception"+e.getMessage());
            throw new RuntimeException(e);
        }
        String query ="SELECT * FROM Store.users WHERE userId =?";
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement= connection.prepareStatement(query);
            preparedStatement.setLong(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return User.builder()
                        .id(resultSet.getLong(1))
                        .email(resultSet.getString(2))
                        .password(resultSet.getString(3))
                        .email(resultSet.getString(4))
                        .balance(resultSet.getBigDecimal(5)).build();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    });

}
