<%@page import="com.ltwmyproject.dao.impl.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang-chu</title>
</head>
<body>
 
<c:if test="${requestScope.lang=='English' }">
	<fmt:setLocale value="en_US" scope='page'/>
</c:if>

<c:if test="${requestScope.lang=='VietNam' }">
	<fmt:setLocale value="vi_VN" scope='page'/>
</c:if>

<fmt:setBundle var="b" basename="app" scope = "session" />

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
		 <%
            CategoryDAO category = new CategoryDAO();
            
            %>
					
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span><fmt:message key="content.allDepartment" bundle="${b }" /></span>
                        </div>
                        <ul>
                            <li><a href="shop-controller?categoryId=1"><fmt:message key="content.allDepartment.FreshMeat" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=2"><fmt:message key="content.allDepartment.vegetables" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=3"><fmt:message key="content.allDepartment.Fruit&Nut" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=4"><fmt:message key="content.allDepartment.Oceanfoods" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=5"><fmt:message key="content.allDepartment.butter&eggs" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=6"><fmt:message key="content.allDepartment.fastfood" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=7"><fmt:message key="content.allDepartment.FreshOnion" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=8"><fmt:message key="content.allDepartment.papayaya" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=9"><fmt:message key="content.allDepartment.oatmeal" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=10"><fmt:message key="content.allDepartment.freshbnana" bundle="${b }" /></a></li>
                            <li><a href="shop-controller?categoryId=11"><fmt:message key="content.allDepartment.berry" bundle="${b }" /></a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    <fmt:message key="content.allCategories" bundle="${b }" />
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="<fmt:message key="content.placeholderAllcategory" bundle="${b }" />">
                                <button type="submit" class="site-btn"><fmt:message key="content.search" bundle="${b }" /></button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span><fmt:message key="content.support" bundle="${b }" /></span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="template/web/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span><fmt:message key="content.fruitFresh" bundle="${b }" /></span>
                            <h2><fmt:message key="content.allDepartment.vegetables" bundle="${b }" /> <br /><fmt:message key="content.vegetablesOrganic" bundle="${b }" /></h2>
                            <p><fmt:message key="content.freeDelivery" bundle="${b }" /></p>
                            <a href="#" class="primary-btn"><fmt:message key="content.shopnow" bundle="${b }" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

 <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="template/web/img/categories/cat-1.jpg">
                            <h5><a href="#"><fmt:message key="content.freshfruit" bundle="${b }" /></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="template/web/img/categories/cat-2.jpg">
                            <h5><a href="#"><fmt:message key="content.driedfruit" bundle="${b }" /></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="template/web/img/categories/cat-3.jpg">
                            <h5><a href="#"><fmt:message key="content.vegetables" bundle="${b }" /></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="template/web/img/categories/cat-4.jpg">
                            <h5><a href="#"><fmt:message key="content.drinkfruit" bundle="${b }" /></a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="template/web/img/categories/cat-5.jpg">
                            <h5><a href="#"><fmt:message key="content.freshmeat" bundle="${b }" /></a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2><fmt:message key="content.featuredProduct" bundle="${b }" /></h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*"><fmt:message key="content.all" bundle="${b }" /></li>
                            <li data-filter=".oranges"><fmt:message key="content.Oranges" bundle="${b }" /></li>
                            <li data-filter=".fresh-meat"><fmt:message key="content.freshmeat" bundle="${b }" /></li>
                            <li data-filter=".vegetables"><fmt:message key="content.vegetables" bundle="${b }" /></li>
                            <li data-filter=".fastfood"><fmt:message key="content.Fastfood" bundle="${b }" /></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-1.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                
                                
                                <c:url value="/addTo_Cart?productId=${product.id} " var="addToCart"></c:url>
                                
                                <li><a href="${addToCart} }"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            
                            
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.beef" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.bananas" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.guava" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.waterMellon" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-5.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.grapes" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-6.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.hamburger" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-7.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.mango" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="template/web/img/featured/feature-8.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><fmt:message key="content.apples" bundle="${b }" /></a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="template/web/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="template/web/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4><fmt:message key="content.latesProduct" bundle="${b }" /></h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.lettuce" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.bellPepper" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.chickenthighs" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.chickenthighs" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.bellPepper" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.lettuce" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4><fmt:message key="content.topRatedProduct" bundle="${b }" /></h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.lettuce" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.chickenthighs" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.mango" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.lettuce" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.bellPepper" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.chickenthighs" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4><fmt:message key="content.topRatedProduct" bundle="${b }" /></h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.mango" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.chickenthighs" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.lettuce" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.bellPepper" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.mango" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="template/web/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6><fmt:message key="content.lettuce" bundle="${b }" /></h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2><fmt:message key="content.fromtheblog" bundle="${b }" /></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="template/web/img/blog/blog-1.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#"><fmt:message key="content.cookingtips" bundle="${b }" /></a></h5>
                            <p><fmt:message key="content.cookingtips.content" bundle="${b }" /> </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="template/web/img/blog/blog-2.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#"><fmt:message key="content.6way" bundle="${b }" /></a></h5>
                            <p><fmt:message key="content.6way.content" bundle="${b }" /> </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="template/web/img/blog/blog-3.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#"><fmt:message key="content.visitFarm" bundle="${b }" /></a></h5>
                            <p><fmt:message key="content.visitFarm.content" bundle="${b }" /></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    
</body>
</html>