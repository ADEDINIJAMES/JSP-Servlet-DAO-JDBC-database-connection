package com.example.servelet.dto;

import lombok.Data;

import java.math.BigDecimal;
@Data
public class FundDto {
    private Long id;
    private BigDecimal amount;
}
