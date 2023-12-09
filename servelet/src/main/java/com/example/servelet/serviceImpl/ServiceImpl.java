package com.example.servelet.serviceImpl;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.example.servelet.dto.LoginRequestDto;
import com.example.servelet.dto.UserDTO;
import com.example.servelet.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;

public class ServiceImpl {
public static List<User> currentCustomer=new ArrayList<>();
public Function<UserDTO, User> saveUsers=(userDTO -> {
    User user = new User(userDTO);
    user.setId(currentCustomer.isEmpty() ?1:(long) currentCustomer.size()+1);
    currentCustomer.add(user);
    return user;
});
public Function<LoginRequestDto, Boolean> AdminPassword =(loggedInUser)-> currentCustomer.stream().filter(user -> Objects.equals(user.getPassword(),loggedInUser.getPassword())).isParallel();

    public Function<LoginRequestDto,Boolean>verifyPassword = (user)-> BCrypt.verifyer()
        .verify(user.getPassword().toCharArray(),
               user.getHashPassword()).verified;
}
