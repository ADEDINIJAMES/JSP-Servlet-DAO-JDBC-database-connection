package com.example.servelet.config;

import lombok.Getter;

@Getter
public class DatabaseConfiguration {
    private final String DB_URL = "jdbc:mysql://localhost:3306/Store";
    private final String DB_USERNAME ="root";
    private final String DB_PASSWORD ="busayomi500";

}
