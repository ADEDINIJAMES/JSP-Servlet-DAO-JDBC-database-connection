package com.example.servelet.model;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class Products {
private Long id;
private String name;
private String category;
private Long quantity;
private BigDecimal productPrice;
private String colour;

    public Products(String name, String category, Long quantity, BigDecimal productPrice, String colour) {
        this.name = name;
        this.category = category;
        this.quantity = quantity;
        this.productPrice = productPrice;
        this. colour = colour;
    }
}
