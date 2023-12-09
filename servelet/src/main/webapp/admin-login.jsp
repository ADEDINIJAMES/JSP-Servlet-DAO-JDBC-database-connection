<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">

    <title>Member Area :: Ruby - Jewelry Store </title>

    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon"/>

    <!--== Google Fonts ==-->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Droid+Serif:400,400i,700,700i"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,700"/>
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i"/>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/vendor/bootstrap.min.css" rel="stylesheet">
    <!--=== Font-Awesome CSS ===-->
    <link href="assets/css/vendor/font-awesome.css" rel="stylesheet">
    <!--=== Plugins CSS ===-->
    <link href="assets/css/plugins.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>


    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--== Header Area Start ==-->
<header id="header-area" class="header__3">
    <div class="ruby-container">
        <div class="row">
            <!-- Logo Area Start -->
            <div class="col-3 col-lg-1 col-xl-2 m-auto">
                <a href="index.html" class="logo-area">
                    <img src="assets/img/logo-black.png" alt="Logo" class="img-fluid"/>
                </a>
            </div>
            <!-- Logo Area End -->

            <!-- Navigation Area Start -->
            <div class="col-3 col-lg-9 col-xl-8 m-auto">
                <div class="main-menu-wrap">
                    <nav id="mainmenu">
                        <ul>
                            <li class="dropdown-show"><a href="index.jsp">Home</a>
                                <ul class="dropdown-nav sub-dropdown">
                                    <li><a href="user">Home </a></li>
                                    <%--                                    <li><a href="index2.jsp">Home Layout 2</a></li>--%>
                                    <%--                                    <li><a href="index3.jsp">Home Layout 3</a></li>--%>
                                    <%--                                    <li><a href="index4.jsp">Home Layout 4</a></li>--%>
                                    <%--                                    <li><a href="index5.jsp">Home Layout 5</a></li>--%>
                                    <%--                                    <li><a href="index6.jsp">Home Layout 6</a></li>--%>
                                </ul>
                            </li>
                            <li class="dropdown-show"><a href="user">Log IN/Register</a>
                                <ul class="mega-menu-wrap dropdown-nav">
                                    <li class="mega-menu-item"><a href="user"  class="mega-item-title">Register</a>
                                    <li class="mega-menu-item"><a href="user?login=login" class="mega-item-title">Login</a>
                                    </li>
                                    <li class="mega-menu-item"><li class=""><a href="my-account.jsp">My Account</a>My Account</a>
                                    <ul>
                                        <%--                                            <li><a href="single-product.jsp">Single Product</a></li>--%>
                                        <%--                                            <li><a href="single-product-normal.jsp">Single Product Normal</a></li>--%>
                                        <%--                                            <li><a href="single-product-group.jsp">Single Product Group</a></li>--%>
                                        <%--                                            <li><a href="single-product-external.jsp">Single Product External</a></li>--%>
                                    </ul>
                                </li>
                                </ul>
                            </li>
                            <li class=""><a href="my-account.jsp">My Account</a>
                                <%--                                <ul class="dropdown-nav">--%>
                                <%--                                    <li><a href="cart.jsp">Shopping Cart</a></li>--%>
                                <%--                                    <li><a href="checkout.jsp">Checkout</a></li>--%>
                                <%--                                    <li><a href="compare.jsp">Compare</a></li>--%>
                                <%--                                    <li><a href="wishlist.jsp">Wishlist</a></li>--%>
                                <%--                                    <li><a href="login.jsp">Login & Register</a></li>--%>
                                <%--                                    <li><a href="my-account.jsp">My Account</a></li>--%>
                                <%--                                    <li><a href="404.jsp">404 Error</a></li>--%>
                                <%--                                </ul>--%>
                            </li>
                            <%--                            <li class="dropdown-show"><a href="#">Men</a>--%>
                            <%--                                <ul class="mega-menu-wrap dropdown-nav">--%>
                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Shirt</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Tops & Tees</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Polo Short Sleeve</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Graphic T-Shirts</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Jackets & Coats</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Fashion Jackets</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>

                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Jeans</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Crochet</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Sleeveless</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Stripes</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Sweaters</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Hoodies</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>

                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Shoes</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Tops & Tees</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Polo Short Sleeve</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Graphic T-Shirts</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Jackets & Coats</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Fashion Jackets</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>

                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Watches</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Crochet</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Sleeveless</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Stripes</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Sweaters</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Hoodies</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>
                            <%--                                </ul>--%>
                            <%--                            </li>--%>
                            <%--                            <li class="dropdown-show"><a href="shop-left-full-wide.jsp">Women</a>--%>
                            <%--                                <ul class="mega-menu-wrap dropdown-nav">--%>
                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Kamiz</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Tops & Tees</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Polo Short Sleeve</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Graphic T-Shirts</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Jackets & Coats</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Fashion Jackets</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>

                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Life Style</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Crochet</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Sleeveless</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Stripes</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Sweaters</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Hoodies</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>

                            <%--                                    <li class="mega-menu-item"><a href="shop-left-full-wide.jsp"--%>
                            <%--                                                                  class="mega-item-title">Shoes</a>--%>
                            <%--                                        <ul>--%>
                            <%--                                            <li><a href="shop.jsp">Tops & Tees</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Polo Short Sleeve</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Graphic T-Shirts</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Jackets & Coats</a></li>--%>
                            <%--                                            <li><a href="shop.jsp">Fashion Jackets</a></li>--%>
                            <%--                                        </ul>--%>
                            <%--                                    </li>--%>
                            <%--                                </ul>--%>
                            <%--                            </li>--%>
                            <li class="dropdown-show"><a href="#">Blog</a>
                                <ul class="dropdown-nav">
                                    <li><a href="#">Blog Right Sidebar</a></li>
                                    <%--                                    <li><a href="blog-left-sidebar.jsp">Blog Left Sidebar</a></li>--%>
                                    <%--                                    <li><a href="blog-grid.jsp">Blog Grid Layout</a></li>--%>
                                    <%--                                    <li><a href="single-blog.jsp">Blog Details</a></li>--%>
                                </ul>
                            </li>
                            <li><a href="user?admin=false">logout</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Navigation Area End -->


            <!-- Header Right Meta Start -->
            <div class="col-6 col-lg-2 m-auto">
                <div class="header-right-meta text-right">
                    <ul>
                        <li><a href="#" class="modal-active"><i class="fa fa-search"></i></a></li>
                        <li class="settings"><a href="#"><i class="fa fa-cog"></i></a>
                            <div class="site-settings d-block d-sm-flex">
                                <dl class="currency">
                                    <dt>Currency</dt>
                                    <dd class="current"><a href="#">USD</a></dd>
                                    <dd><a href="#">AUD</a></dd>
                                    <dd><a href="#">CAD</a></dd>
                                    <dd><a href="#">BDT</a></dd>
                                </dl>

                                <dl class="my-account">
                                    <dt>My Account</dt>
                                    <dd><a href="#">Dashboard</a></dd>
                                    <dd><a href="#">Profile</a></dd>
                                    <dd><a href="#">Sign</a></dd>
                                </dl>

                                <dl class="language">
                                    <dt>Language</dt>
                                    <dd class="current"><a href="#">English (US)</a></dd>
                                    <dd><a href="#">English (UK)</a></dd>
                                    <dd><a href="#">Chinees</a></dd>
                                    <dd><a href="#">Bengali</a></dd>
                                    <dd><a href="#">Hindi</a></dd>
                                    <dd><a href="#">Japanees</a></dd>
                                </dl>
                            </div>
                        </li>
                        <li class="shop-cart"><a href="#"><i class="fa fa-shopping-bag"></i> <span
                                class="count">3</span></a>
                            <div class="mini-cart">
                                <div class="mini-cart-body">
                                    <div class="single-cart-item d-flex">
                                        <figure class="product-thumb">
                                            <a href="#"><img class="img-fluid" src="assets/img/product-1.jpg"
                                                             alt="Products"/></a>
                                        </figure>

                                        <div class="product-details">
                                            <h2><a href="#">Sprite Yoga Companion</a></h2>
                                            <div class="cal d-flex align-items-center">
                                                <span class="quantity">3</span>
                                                <span class="multiplication">X</span>
                                                <span class="price">$77.00</span>
                                            </div>
                                        </div>
                                        <a href="#" class="remove-icon"><i class="fa fa-trash-o"></i></a>
                                    </div>
                                    <div class="single-cart-item d-flex">
                                        <figure class="product-thumb">
                                            <a href="#"><img class="img-fluid" src="assets/img/product-2.jpg"
                                                             alt="Products"/></a>
                                        </figure>
                                        <div class="product-details">
                                            <h2><a href="#">Yoga Companion Kit</a></h2>
                                            <div class="cal d-flex align-items-center">
                                                <span class="quantity">2</span>
                                                <span class="multiplication">X</span>
                                                <span class="price">$6.00</span>
                                            </div>
                                        </div>
                                        <a href="#" class="remove-icon"><i class="fa fa-trash-o"></i></a>
                                    </div>
                                    <div class="single-cart-item d-flex">
                                        <figure class="product-thumb">
                                            <a href="#"><img class="img-fluid" src="assets/img/product-3.jpg"
                                                             alt="Products"/></a>
                                        </figure>
                                        <div class="product-details">
                                            <h2><a href="#">Sprite Yoga Companion Kit</a></h2>
                                            <div class="cal d-flex align-items-center">
                                                <span class="quantity">1</span>
                                                <span class="multiplication">X</span>
                                                <span class="price">$116.00</span>
                                            </div>
                                        </div>
                                        <a href="#" class="remove-icon"><i class="fa fa-trash-o"></i></a>
                                    </div>
                                </div>
                                <div class="mini-cart-footer">
                                    <a href="checkout.jsp" class="btn-add-to-cart">Checkout</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Header Right Meta End -->
        </div>
    </div>
</header>
<!--== Header Area End ==-->

<!--== Search Box Area Start ==-->
<div class="body-popup-modal-area">
    <span class="modal-close"><img src="assets/img/cancel.png" alt="Close" class="img-fluid"/></span>
    <div class="modal-container d-flex">
        <div class="search-box-area">
            <div class="search-box-form">
                <form action="#" method="post">
                    <input type="search" placeholder="type keyword and hit enter"/>
                    <button class="btn" type="button"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
    </div>
</div>
<!--== Search Box Area End ==-->

<!--== Page Title Area Start ==-->
<div id="page-title-area">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <div class="page-title-content">
                    <h1>Member Area</h1>
                    <ul class="breadcrumb">
                        <li><a href="user?index=true">Home</a></li>
                        <li><a href="user" class="active">Login & Register</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--== Page Title Area End ==-->

<!--== Page Content Wrapper Start ==-->
<div id="page-content-wrapper" class="p-9">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 m-auto">
                <!-- Login & Register Content Start -->
                <div class="login-register-wrapper">
                    <!-- Login & Register tab Menu -->
                    <nav class="nav login-reg-tab-menu">
                        <a class="active" id="login-tab" data-toggle="tab" href="#login">Login</a>
                    </nav>
                    <!-- Login & Register tab Menu -->

                    <div class="tab-content" id="login-reg-tabcontent">
                        <div class="tab-pane fade show active" id="login" role="tabpanel">
                            <div class="login-reg-form-wrap">
                                <form action="user" method="post">
                                    <div class="single-input-item">
                                        <input type="email"  name="email" placeholder="Enter your Email" required/>
                                    </div>

                                    <div class="single-input-item">
                                        <input type="password" name="password" placeholder="Enter your Password" required/>
                                    </div>

                                    <div class="single-input-item">
                                        <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                            <div class="remember-meta">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="rememberMe">
                                                    <label class="custom-control-label" for="rememberMe">Remember
                                                        Me</label>
                                                </div>
                                            </div>

                                            <a href="#" class="forget-pwd">Forget Password?</a>
                                        </div>
                                    </div>

                                    <div class="single-input-item">
                                        <button class="btn-login" name="admin-login">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <%--                        <div class="tab-pane fade" id="register" role="tabpanel">--%>
                        <%--                            <div class="login-reg-form-wrap">--%>
                        <%--                                <form action="user" method="post">--%>
                        <%--                                    <div class="single-input-item">--%>
                        <%--                                        <input type="text" placeholder="Full Name" required/>--%>
                        <%--                                    </div>--%>

                        <%--                                    <div class="single-input-item">--%>
                        <%--                                        <input type="email" placeholder="Enter your Email" required/>--%>
                        <%--                                    </div>--%>

                        <%--                                    <div class="row">--%>
                        <%--                                        <div class="col-lg-6">--%>
                        <%--                                            <div class="single-input-item">--%>
                        <%--                                                <input type="password" placeholder="Enter your Password" required/>--%>
                        <%--                                            </div>--%>
                        <%--                                        </div>--%>

                        <%--                                        <div class="col-lg-6">--%>
                        <%--                                            <div class="single-input-item">--%>
                        <%--                                                <input type="password" placeholder="Repeat your Password" required/>--%>
                        <%--                                            </div>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div>--%>

                        <%--                                    <div class="single-input-item">--%>
                        <%--                                        <div class="login-reg-form-meta">--%>
                        <%--                                            <div class="remember-meta">--%>
                        <%--                                                <div class="custom-control custom-checkbox">--%>
                        <%--                                                    <input type="checkbox" class="custom-control-input"--%>
                        <%--                                                           id="subnewsletter">--%>
                        <%--                                                    <label class="custom-control-label" for="subnewsletter">Subscribe--%>
                        <%--                                                        Our Newsletter</label>--%>
                        <%--                                                </div>--%>
                        <%--                                            </div>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div>--%>

                        <%--                                    <div class="single-input-item">--%>
                        <%--                                        <button class="btn-login" name="sign-up">Register</button>--%>
                        <%--                                    </div>--%>
                        <%--                                </form>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                    </div>
                </div>
                <!-- Login & Register Content End -->
            </div>
        </div>
    </div>
</div>
<!--== Page Content Wrapper End ==-->

<!-- Footer Area Start -->
<footer id="footer-area">
    <!-- Footer Call to Action Start -->
    <div class="footer-callto-action">
        <div class="ruby-container">
            <div class="callto-action-wrapper">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <!-- Single Call-to Action Start -->
                        <div class="single-callto-action d-flex">
                            <figure class="callto-thumb">
                                <img src="assets/img/air-plane.png" alt="WorldWide Shipping"/>
                            </figure>
                            <div class="callto-info">
                                <h2>Free Shipping Worldwide</h2>
                                <p>On order over $150 - 7 days a week</p>
                            </div>
                        </div>
                        <!-- Single Call-to Action End -->
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <!-- Single Call-to Action Start -->
                        <div class="single-callto-action d-flex">
                            <figure class="callto-thumb">
                                <img src="assets/img/support.png" alt="Support"/>
                            </figure>
                            <div class="callto-info">
                                <h2>24/7 CUSTOMER SERVICE</h2>
                                <p>Call us 24/7 at 000 - 123 - 456k</p>
                            </div>
                        </div>
                        <!-- Single Call-to Action End -->
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <!-- Single Call-to Action Start -->
                        <div class="single-callto-action d-flex">
                            <figure class="callto-thumb">
                                <img src="assets/img/money-back.png" alt="Money Back"/>
                            </figure>
                            <div class="callto-info">
                                <h2>MONEY BACK Guarantee!</h2>
                                <p>Send within 30 days</p>
                            </div>
                        </div>
                        <!-- Single Call-to Action End -->
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <!-- Single Call-to Action Start -->
                        <div class="single-callto-action d-flex">
                            <figure class="callto-thumb">
                                <img src="assets/img/cog.png" alt="Guide"/>
                            </figure>
                            <div class="callto-info">
                                <h2>SHOPPING GUIDE</h2>
                                <p>Quis Eum Iure Reprehenderit</p>
                            </div>
                        </div>
                        <!-- Single Call-to Action End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Call to Action End -->

    <!-- Footer Follow Up Area Start -->
    <div class="footer-followup-area">
        <div class="ruby-container">
            <div class="followup-wrapper">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="follow-content-wrap">
                            <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="logo"/></a>
                            <p>Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum</p>

                            <div class="footer-social-icons">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-flickr"></i></a>
                            </div>

                            <a href="#"><img src="assets/img/payment.png" alt="Payment Method"/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Follow Up Area End -->

    <!-- Footer Image Gallery Area Start -->
    <div class="footer-image-gallery">
        <div class="ruby-container">
            <div class="image-gallery-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="imgage-gallery-carousel owl-carousel">
                            <div class="gallery-item">
                                <a href="#"><img src="assets/img/gallery-img-1.jpg" alt="Gallery"/></a>
                            </div>
                            <div class="gallery-item">
                                <a href="#"><img src="assets/img/gallery-img-2.jpg" alt="Gallery"/></a>
                            </div>
                            <div class="gallery-item">
                                <a href="#"><img src="assets/img/gallery-img-3.jpg" alt="Gallery"/></a>
                            </div>
                            <div class="gallery-item">
                                <a href="#"><img src="assets/img/gallery-img-4.jpg" alt="Gallery"/></a>
                            </div>
                            <div class="gallery-item">
                                <a href="#"><img src="assets/img/gallery-img-3.jpg" alt="Gallery"/></a>
                            </div>
                            <div class="gallery-item">
                                <a href="#"><img src="assets/img/gallery-img-2.jpg" alt="Gallery"/></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Image Gallery Area End -->

    <!-- Copyright Area Start -->
    <div class="copyright-area">
        <div class="ruby-container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="copyright-text">
                        <p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright Area End -->

</footer>
<!-- Footer Area End -->

<!-- Scroll to Top Start -->
<a href="#" class="scrolltotop"><i class="fa fa-angle-up"></i></a>
<!-- Scroll to Top End -->


<!--=======================Javascript============================-->
<!--=== Jquery Min Js ===-->
<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
<!--=== Jquery Migrate Min Js ===-->
<script src="assets/js/vendor/jquery-migrate-1.4.1.min.js"></script>
<!--=== Popper Min Js ===-->
<script src="assets/js/vendor/popper.min.js"></script>
<!--=== Bootstrap Min Js ===-->
<script src="assets/js/vendor/bootstrap.min.js"></script>
<!--=== Plugins Min Js ===-->
<script src="assets/js/plugins.js"></script>

<!--=== Active Js ===-->
<script src="assets/js/active.js"></script>
</body>

</html>