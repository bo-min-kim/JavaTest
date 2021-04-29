<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">최고의 믿음 삼위일체 치과</div>
                <div class="masthead-heading text-uppercase">100년 전통 치과</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="<%=NoForm%>boDoctor">의료진 소개</a>
            </div>
        </header>
        <!-- Services-->
       <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">진료 과정</h2>
                    <h3 class="section-subheading text-muted">최고의 실력, 따뜻한 마음으로 우리 가족 평생의 주치의가 되겠습니다.</h3>
                    <hr><br><br>
                </div>
                <img src="${contextPath}/images/dentalin.jpg" alt="dental1" width="100%"
						height="700"><br><br><br><br>
                <div class="row">
                    <div class="col-lg-4">
                    	<div class="team-member">
                        <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/sub1.jpg" alt="">
                        <h4>STEP_1. 환자상담</h4><br>
                        <p class="text-muted">정밀한 초진상담과 진료를 통해 담당 원장님과 상담합니다. 전체적인 문제점, 개선방법 등을 논의합니다.</p>
                   		 </div>
                    </div>
                    <div class="col-lg-4">
                    	<div class="team-member">
                        <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/sub2.jpg" alt="">
                        <h4>STEP_2. 정밀치료</h4><br>
                        <p class="text-muted">정밀 진단 결과에 의거하여 비용설명 및 치료에 따른 주의사항을 듣고, 치료 시작이 가능합니다. </p>
                    	</div>
                    </div>
                     <div class="col-lg-4">
                    	<div class="team-member">
                        <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/sub3.jpg" alt="">
                        <h4>STEP_3. 사후관리</h4><br>
                        <p class="text-muted">안정적인 치료 상태를 유지하기 위하여 치료한 치아 및 잇몸의 상태등을 확인하기 위해 진료 1주일 이내 내원하여 체크합니다.</p>
                    	</div>
                   </div>
                </div>
            </div>
        </section>
        <!-- Portfolio Grid-->
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
         <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">백년 치과</h2>
                    <h3 class="section-subheading text-muted">100년을 이어져온 유서깊은 치과</h3>
                </div>
                <hr>
                <br><br><br>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${contextPath}/assets/img/intro/dentist01.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>1920년</h4>
                                <h4 class="subheading">대한민국 최초의 치과</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">백년치과의 원장들은 1920년에 미국에서 같은 학교를 다닌 선후배 사이로, 모두 20년 이상의 치과의사 경력을 가지고 있습니다. 대한민국 최초의 치과로 100년 전통의 치과입니다. 분야별 담당의사의 진료를 통해서 환자들에게 보다 나은 서비스를 제공합니다.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${contextPath}/assets/img/intro/machine02.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>1999년</h4>
                                <h4 class="subheading">20세기 최고의 치과</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">1999년 아시아부문에서 20세기의 최고의 치과에 선정되었습니다. 서비스, 고객만족도 부문에서 1위를 차지하면서 압도적인 1등으로 선정되었습니다. 일본, 중국, 러시아, 몽골, 미국, 필리핀, 싱가폴, 베트남 등 여러 나라에서 백년치과를 찾아오고 있습니다. 의사들은 모두 기본적으로 5개국어를 다루며, 외국인을 위한 통역사도 있습니다.</p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${contextPath}/assets/img/intro/front01.png" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2015년</h4>
                                <h4 class="subheading">미래를 보는 치과</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">백년치과는 100년된 노하우를 가지고 있는 반면에, 100년후 미래를 보는 치과를 목표로 하고 있습니다. 최신식 장비와 각 분야별 최고의 전문 의료진들을 갖추고 있어서 환자에게도 최고의 맞춤형 서비스를 제공합니다. 백년치과는 항상 최고의 치과치료를 위해서 노력을 하고 있습니다.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${contextPath}/assets/img/intro/doctor01.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2020년</h4>
                                <h4 class="subheading">환자를 가장 생각하는 치과</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">백년치과의 치과는 환자가 필요한 것을 반영합니다. 환자가 원하는 환경, 환자가 원하는 의료서비스등 모든 것은 환자에게 맞춰져 있습니다. 의사들은 바뀌어 가는 시대에 맞춰서 자기 스스로의 관리와 공부도 꾸준히 하며 환자들에게 보다 좋은 서비스를 위해서 노력하고있습니다.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                              	I'll
                                <br />
                                do
                                <br />
                                my best!
                            </h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">의료진 소개</h2>
                    <h3 class="section-subheading text-muted">Today Dental Network Dactor</h3>
                </div>
                <br><br>
                 <hr>
                <br><br><br><br><br>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/one.jpg" alt="" href="doctor_01.png">
                            <h4>송미경 원장</h4><br>
                            <p class="text-muted">대표 원장</p>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/two.jpg" alt="" />
                            <h4>강선호 전문의</h4><br>
                            <p class="text-muted">구강외과 전문의</p>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/three.jpg" alt="" />
                            <h4>김범진 전문의</h4><br>
                            <p class="text-muted">교정과&보존과 전문의</p>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="void(0);" onclick="alert('준비중입니다!'); return false;"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">고객 한분 한분에게 최선을 다하려고 하는 백년치과,<br>
                    	모든 분들에게 치료 과정 뿐만 아니라 치료 후에도 만족스러울 수 있도록 꾸준히 노력하겠습니다.</p></div>
                </div>
            </div>
        </section>
        <!-- Clients-->
        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${contextPath}/assets/img/logos/envato.jpg" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${contextPath}/assets/img/logos/designmodo.jpg" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${contextPath}/assets/img/logos/themeforest.jpg" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${contextPath}/assets/img/logos/creative-market.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">1:1 상담문의</h2>
                    <p class="section-heading text-uppercase">문의사항이 있으신가요?</p>
                    <p class="section-heading text-uppercase">진료 및 상담관련 질문을 등록해주시면 빠른 시일 내에 답변 드리도록 하겠습니다.</p>
                </div>
                <form id="contactForm" name="sentMessage" novalidate="novalidate">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" id="name" type="text" placeholder="이름을 입력해주세요 *" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="email" type="email" placeholder="이메일을 입력해주세요 *" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group mb-md-0">
                                <input class="form-control" id="phone" type="tel" placeholder="연락처를 입력해주세요 *" required="required" data-validation-required-message="Please enter your phone number." />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <textarea class="form-control" id="message" placeholder="문의사항을 입력해주세요 *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div id="success"></div>
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">확인</button>
                    </div>
                </form>
            </div>
        </section>
</body>
</html>