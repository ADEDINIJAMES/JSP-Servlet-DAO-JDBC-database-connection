package com.example.servelet.model;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.example.servelet.dto.UserDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Long id;
   private String name;
   private String email;
   private String password;
   private BigDecimal balance;

    public User(UserDTO saveduser) {
        this.name= saveduser.getName();
        this.email= saveduser.getEmail();
        String password = BCrypt.withDefaults().hashToString(12,saveduser.getPassword().toCharArray());
        this.password = password;
    }
}
