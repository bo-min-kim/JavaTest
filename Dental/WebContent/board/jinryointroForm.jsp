<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<title>진료 소개</title>
</head>
<body>
	<br><br><br>
	<section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">진료 소개</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" href="<%=NoForm%>implant&section=implant">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${contextPath}/assets/img/portfolio/implant01-thum.jpg" alt=""/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">임플란트</div>
                                <div class="portfolio-caption-subheading text-muted">Implant</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" href="<%=NoForm%>implant&section=toothCorrection">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${contextPath}/assets/img/portfolio/sub2-thum.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">치아 교정</div>
                                <div class="portfolio-caption-subheading text-muted">Tooth Correction</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" href="<%=NoForm%>implant&section=prostheticTreatment">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${contextPath}/assets/img/portfolio/two-thum.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">보철 치료</div>
                                <div class="portfolio-caption-subheading text-muted">Prosthetic Treatment</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" href="<%=NoForm%>implant&section=cavityTreatment">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${contextPath}/assets/img/portfolio/dentist02-thum.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">충치 치료</div>
                                <div class="portfolio-caption-subheading text-muted">Cavity Treatment</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" href="<%=NoForm%>implant&section=wisdomTeeth">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${contextPath}/assets/img/portfolio/machine01-thum.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">사랑니 치료</div>
                                <div class="portfolio-caption-subheading text-muted">Treatment For Wisdom Teeth</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="portfolio-item">
                            <a class="portfolio-link" href="<%=NoForm%>implant&section=toothWhitening">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${contextPath}/assets/img/portfolio/meback01-thum.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">치아 미백</div>
                                <div class="portfolio-caption-subheading text-muted">Tooth Whitening</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>