<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>

<!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="template/web/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li><fmt:message key="footer.address" bundle="${b }" /></li>
                            <li><fmt:message key="footer.phone" bundle="${b }" /></li>
                            <li><fmt:message key="footer.email" bundle="${b }" /></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6><fmt:message key="footer.UserfulLink" bundle="${b }" /> </h6>
                        <ul>
                            <li><a href="#"><fmt:message key="footer.aboutUs" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.aboutOurShop" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.SecureShopping" bundle="${b }" /> </a></li>
                            <li><a href="#"><fmt:message key="footer.DeliveryInformation" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.PrivacyPolicy" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.OurSitesmap" bundle="${b }" /></a></li>
                        </ul>
                        <ul>
                            <li><a href="#"><fmt:message key="footer.Whoweare" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.Ourservice" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.Project" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.contact" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.innovation" bundle="${b }" /></a></li>
                            <li><a href="#"><fmt:message key="footer.Testimonials" bundle="${b }" /></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6><fmt:message key="footer.joinOur" bundle="${b }" /></h6>
                        <p><fmt:message key="footer.joinOur.content" bundle="${b }" /></p>
                        <form action="#">
                            <input type="text" placeholder="<fmt:message key="footer.enterEmailPlaceholder" bundle="${b }" />">
                            <button type="submit" class="site-btn"><fmt:message key="footer.subcribse" bundle="${b }" /></button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
          
    </footer>
    <!-- Footer Section End -->