package com.example.servelet.service;

import java.sql.SQLException;

@FunctionalInterface
public interface UserService {
void compile() throws ClassNotFoundException, SQLException;
}
