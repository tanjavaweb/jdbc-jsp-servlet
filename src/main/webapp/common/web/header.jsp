
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>
    
       <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
   
    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> satakemysoul@gmail.com</li>
                                <li><fmt:message key="header.shipping" bundle="${b }" /></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="template/web/img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="?lang=VietNam">vietnamese</a></li>
                                    <li><a href="?lang=English">English</a></li>
                                </ul>
                            </div>
                            
                            <%
                            String name = (String) session.getAttribute("dangnhapthanhcong"); 
                            %>
                            
                            <%
                            if(name != null ){
                            %>
                             <div class="header__top__right__auth">
                                <a href="login-controller"><i class="fa fa-user"></i><%=name %></a>
                            </div>
                            
                            <div class="header__top__right__auth">
                                <a href="Logout-controller" style="padding-left: 3px"><i class="fa fa-times-circle" style="color: red"></i></a>
                            </div>

                            <% 
                            }else {
                            
                            %>
                            <div class="header__top__right__auth">
                                <a href="login-controller"><i class="fa fa-user"></i><fmt:message key="header.login" bundle="${b }" /></a>
                            </div>
                            
                            <% }%>

                            

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="views/web/home.jsp]"><img src="template/web/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="trang-chu"> <fmt:message key="header.home" bundle="${b }" /></a></li>
                            <li><a href="shop-controller"><fmt:message key="header.shop" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="header.page" bundle="${b }" /></a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="shop-detail-controller"><fmt:message key="header.page.shopingDetail" bundle="${b }" /></a></li>
                                    <li><a href="shopping-cart-controller"><fmt:message key="header.page.shopingDetail" bundle="${b }" /></a></li>
                                    <li><a href="checkout-controller"><fmt:message key="header.page.shoppingCart" bundle="${b }" /></a></li>
                                    <li><a href="blogDetail-controller"><fmt:message key="header.CheckOut" bundle="${b }" /></a></li>
                                </ul>
                            </li>
                            <li><a href="blog-controller">Blog</a></li>
                            <li><a href="contact-controller"><fmt:message key="header.contact" bundle="${b }" /></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="shopping-cart-controller"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price"><fmt:message key="header.item" bundle="${b }" />: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->