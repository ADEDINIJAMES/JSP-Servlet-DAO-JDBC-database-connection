package com.example.servelet.controller;

import com.example.servelet.dao.ProductDAO;
import com.example.servelet.dao.UserDAO;
import com.example.servelet.dto.LoginRequestDto;
import com.example.servelet.dto.UserDTO;
import com.example.servelet.model.User;
import com.example.servelet.serviceImpl.ServiceImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Logger;

import static com.mysql.cj.conf.PropertyKey.logger;

@WebServlet(name="user", value="/user")
public class UserController  extends HttpServlet {
    private Logger logger = Logger.getGlobal();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String login = request.getParameter("login")==null?null:request.getParameter("login");
        String admin = request.getParameter("admin");
        String logout = request.getParameter("logout");
        String index = request.getParameter("index");

        if(admin!=null&& Objects.equals(admin, "true")){
            RequestDispatcher dispatcher =request.getRequestDispatcher("admin-login.jsp");
            dispatcher.forward(request,response);
        }
        if(index!=null&& Objects.equals(index, "true")){
            RequestDispatcher dispatcher =request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request,response);
        }
        if(admin!=null&& Objects.equals(admin, "false")) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
                RequestDispatcher dispatcher = request.getRequestDispatcher("admin-login.jsp");
                dispatcher.forward(request, response);
            }
        }
        if(logout!=null&& Objects.equals(logout,"true")){
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
                RequestDispatcher dispatcher1 = request.getRequestDispatcher("login.jsp");
                dispatcher1.forward(request, response);
            }
        }
        if(login!=null){
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("sign-up.jsp");
        dispatcher.forward(request,response);


    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Displaying user information now.....");
        ServiceImpl serviceinmpl= new ServiceImpl();
        UserDTO userDTO= new UserDTO();
        UserDAO userDAO = new UserDAO();
        String login = request.getParameter("login")== null? null:request.getParameter("login");
        if (login!=null){
            LoginRequestDto loggedInUser = new LoginRequestDto(request.getParameter("email"), request.getParameter("password"));
            User user = userDAO.findUser.apply(loggedInUser);
            loggedInUser.setHashPassword(user.getPassword());
            if(serviceinmpl.verifyPassword.apply(loggedInUser)){
                HttpSession session =  request.getSession();
                session.setAttribute("userID", user.getId());
                request.setAttribute("product-list", new ProductDAO().findAllProducts.get());
                RequestDispatcher dispatcher = request.getRequestDispatcher("my-account.jsp");
                dispatcher.forward(request,response);
            }else{
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request,response);
            }

        }
        String adminLogin = request.getParameter("admin-login");
        if (adminLogin!=null){
            LoginRequestDto loggedInUser = new LoginRequestDto(request.getParameter("email"), request.getParameter("password"));
            User user = userDAO.findAdmin.apply(loggedInUser);
            loggedInUser.setPassword(user.getPassword());
            if(Objects.equals(loggedInUser.getPassword(), user.getPassword())){
                HttpSession session =  request.getSession();
                session.setAttribute("userID", user.getId());
                RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
                dispatcher.forward(request,response);
            }else{
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request,response);
            }

        }

        userDTO.setName(request.getParameter("username"));
        userDTO.setEmail(request.getParameter("email"));
        userDTO.setPassword(request.getParameter("password"));
   //  logger .info ("Saved Users ->"+ serviceinmpl.saveUsers.apply(userDTO));
        logger .info ("Saved Users ->"+ userDAO.saveUser.apply(new User(userDTO)));
        RequestDispatcher dispatcher = request.getRequestDispatcher("successful.jsp");
        dispatcher.forward(request,response);
    }

}
