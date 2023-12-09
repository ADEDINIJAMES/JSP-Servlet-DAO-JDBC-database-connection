package com.example.servelet.controller;

import com.example.servelet.dao.OrderDAO;
import com.example.servelet.dao.ProductDAO;
import com.example.servelet.dao.UserDAO;
import com.example.servelet.model.Cart;
import com.example.servelet.model.Order;
import com.example.servelet.model.Products;
import com.example.servelet.model.User;
import com.mysql.cj.conf.StringProperty;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@WebServlet( name ="product", value = "/product")
public class ProductController extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();
    @Override
    protected void  doGet(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        String viewProduct = request.getParameter("admin");
        String editProduct= request.getParameter("edit");
        String deleteProduct = request.getParameter("delete");
        String buyproduct = request.getParameter("buy");
        String payment = request.getParameter("payment");
        Cart cart = new Cart();
        Order makeOrderPayment =(Order) request.getSession().getAttribute("order");
        Cart paymentCart =(Cart) request.getSession().getAttribute("cart");
        if(makeOrderPayment !=null) {
            UserDAO userDAO = new UserDAO();
            OrderDAO orderDAO = new OrderDAO();
            Long id = (Long) request.getSession().getAttribute("userID");
            User user = userDAO.findUserById.apply(id);
            if (user.getBalance().doubleValue() > makeOrderPayment.getTotalPrice().doubleValue()) {
                BigDecimal balance = user.getBalance().subtract(makeOrderPayment.getTotalPrice());
                System.out.println(balance);
                userDAO.updateUserBalance.apply(user);
                orderDAO.saveOrder.apply(makeOrderPayment);
                request.setAttribute("paid", "payment made successfully");
                request.getSession().setAttribute("order", null);
                RequestDispatcher dispatcher = request.getRequestDispatcher("payment-successful.jsp");
                dispatcher.forward(request, response);
            } else {
                request.getSession().setAttribute("order", null);
                request.setAttribute("paid", "insufficient Balance in your wallet");
                RequestDispatcher dispatcher = request.getRequestDispatcher("payment-successful.jsp");
            }


        }
        if(payment!= null&& paymentCart!=null){
            Order order = new Order();
            final BigDecimal[] totalPrice = {new BigDecimal(0)};
            List<Products> productsList = new ArrayList<>();
            paymentCart.getProductIds().forEach(id->{
                order.setProductIds((order.getProductIds() != null ? order.getProductIds()+ "," : "")+id);
                Products product = productDAO.findProductById.apply(id);
                totalPrice[0] = totalPrice[0].add(product.getProductPrice());
                productsList.add(product);

            });
            HttpSession orderSession = request.getSession();
            order.setTotalPrice(totalPrice[0]);
            orderSession.setAttribute("order", order);
            request.setAttribute("product-list", productsList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
            dispatcher.forward(request, response);
        }
        if (buyproduct!=null){
            if(request.getSession().getAttribute("cart") != null){
                cart = (Cart) request.getSession().getAttribute("cart");
                cart.getProductIds().add(Long.parseLong(buyproduct));
            }else{
                HttpSession cartSession = request.getSession();
                Long id = (Long) cartSession.getAttribute("userID");
                cart.setUserId(id);
                List<Long> productIds = new ArrayList<>();
                productIds.add(Long.parseLong(buyproduct));
                cart.setProductIds(productIds);
                cartSession.setAttribute("cart", cart);
            }
            System.out.println(cart);
            List<Products> productList = productDAO.findAllProducts.get();
            request.setAttribute("product-list", productList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("my-account.jsp");
            dispatcher.forward(request, response);
        }
        if (editProduct!= null){
            Products product = productDAO.findProductById.apply(Long.parseLong(editProduct));
            request.setAttribute("edit-product",product);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
            dispatcher.forward(request,response);
        }
        if (deleteProduct!= null){
            Products product = productDAO.deleteProduct.apply(Long.parseLong(deleteProduct));
            request.setAttribute("delete-product",product);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
            dispatcher.forward(request,response);
        }
        if(viewProduct!=null){
            List<Products>listOfProduct = productDAO.findAllProducts.get();
            request.setAttribute("product-list", listOfProduct);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin-view-product.jsp");
            dispatcher.forward(request,response);

        }
        if (request.getAttribute("shop")!=null) {
            List<Products> productList = productDAO.findAllProducts.get();
            request.setAttribute("product-list", productList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("my-account.jsp");
            dispatcher.forward(request, response);
        }

        List<Products> productList = productDAO.findAllProducts.get();
        request.setAttribute("product-list", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("my-account.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String adminAddProduct= request.getParameter("admin");
        String editProduct= request.getParameter("edit");
        String id = request.getParameter("id");
        if (editProduct!= null){
            String productName = request.getParameter("product-name");
            String productPrice = request.getParameter("product-price");
            String productQuality= request.getParameter("product-quantity");
            String productCategory = request.getParameter("product-category");
            String productColour = request.getParameter("product-colour");
            Products products = new Products(productName, productCategory, Long.parseLong( productQuality), new BigDecimal(productPrice),productColour);
products.setId(Long.parseLong(id));
productDAO.updateProduct.apply(products);
response.sendRedirect("product?admin=view-product");
        }
        if (adminAddProduct!=null){
            String productName = request.getParameter("product-name");
            String productPrice = request.getParameter("product-price");
            String productQuality= request.getParameter("product-quantity");
            String productCategory = request.getParameter("product-category");
            String productColour = request.getParameter("product-colour");
            Products products = new Products(productName, productCategory, Long.parseLong( productQuality), new BigDecimal(productPrice), productColour);
            if(!productDAO.saveproduct.apply(products)){
                List<Products> listOfProducts = productDAO.findAllProducts.get();
                request.setAttribute("product-list", listOfProducts);
                RequestDispatcher dispatcher = request.getRequestDispatcher("admin-view-product.jsp");
                dispatcher.forward(request,response);
            }
            else{
                request.setAttribute("error","Could not add a product");
                RequestDispatcher dispatcher = request.getRequestDispatcher("admin-view-product.jsp");
                dispatcher.forward(request,response);
            }
        }
    }

}
