<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>가지마켓:product-details</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <jsp:include page="../../../resources/fragments/header.jsp"></jsp:include>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class ="hero hero-normal">
   		<jsp:include page="../../../resources/fragments/hero.jsp"></jsp:include>
   	</section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Product Details</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <a href="./index.html">Vegetables</a>
                            <span>Vegetable’s Package</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <!-- 첫번째 사진 -->
                        <c:if test=""></c:if>
                        <div class="product__details__pic__item" style="width:100%; text-align:center; align-items: center;">
                            <img class="product__details__pic__item--large"
                                src="${pageContext.request.contextPath }/resources/upload/${fn:split(productMap.productPic,'|')[0]}" alt="" height="553">
                        </div>
                        <!-- 나머지 사진 -->
                        <div class="product__details__pic__slider owl-carousel">
	                        <c:set var="pictures" value="${fn:split(productMap.productPic,'|')}"></c:set>
	                        <c:forEach var="pic" items="${pictures}">
	                        	<img data-imgbigurl="img/product/details/product-details-2.jpg"
	                                src="${pageContext.request.contextPath }/resources/upload/${pic}" alt="" class="small" height="124">
	                        </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${productMap.productTitle }</h3>
                        <div class="product__details__rating">
<<<<<<< HEAD

                            <!-- <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i> -->

=======

>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
                            <%-- <span>(좋아요 ${productMap.wishCount })</span> --%>
                        </div>
                        <div class="product__details__price">${productMap.productPrice }</div>
                        <p>${productMap.productContent }</p>
<<<<<<< HEAD
                        
                        <a href="#" class="primary-btn">채팅하기</a>

                        
=======

                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>

                        <button class="primary-btn" onclick="createRoom()">채팅하기</button>
                        <!-- 좋아요 버튼 -->
                        <a onclick="heart()" class="heart-icon"><span class="icon_heart_alt"></span></a>
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
                        <button onclick="return pay();" class="primary-btn" style="border: 0px;">거래하기</button>
                        
                        <%-- <c:choose>
				      		<c:when test="${sessionScope.memId eq null}">
				      			<li><a class="cantwish"><i class="far fa-heart"></i></a></li>
				      		</c:when>
				      		<c:otherwise>
				      			<c:set var="fasORfar" value="${dto.memId eq sessionScope.memId ? 'fas' : 'far'}" />
							      		<a class="heart-icon"  data-productnum="${productMap.productNum}" ><i class="fas-fa-heart"></i></a>
				      		</c:otherwise> 
						 </c:choose> --%>
						 
						 <!-- 	color 누르기 전: #6f6f6f; 누르면 바뀔 컬러: #FF0040 -->
<<<<<<< HEAD
						 <a class="heart-icon"><span class="icon_heart_alt"></span></a>
						 

                        <!-- 좋아요 버튼 -->
                        <a onclick="heart()" id="heart" class="heart-icon"><span class="icon_heart_alt"></span></a>

=======

>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
                        <ul>
                            <li><b>상태</b> <span>${productMap.productGrade }</span></li>
<<<<<<< HEAD

                            <li><b>관심수</b> <span>${productMap.wishCount }</span></li>
                            <!-- <li><b>거래</b> <span>택배 거래 원해요 <samp>Free pickup today</samp></span></li> -->

=======
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
                            <li><b>좋아요</b> <span>${productMap.wishCount }</span></li>
<<<<<<< HEAD

=======
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
                            <li><b>판매자</b> <span>${productMap.memNname }</span></li>
                            <li><b>등록 날짜</b> <span>${productMap.productDate }</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
	
    <!-- Related Product Section Begin : 판매자의 다른 상품보기-->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>${productMap.memNname } 님의 다른 상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach var="map" items="${sellerProducts }" varStatus="status">
	                <div class="col-lg-3 col-md-4 col-sm-6">
	                    <div class="product__item">
	                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/upload/${fn:split(map.productPic,'|')[0]}">
	                            <ul class="product__item__pic__hover">
	                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
	                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
	                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
	                            </ul>
	                        </div>
	                        <div class="product__item__text">
	                            <h6><a href="#">${map.productTitle }</a></h6>
	                            <h5>${map.productPrice }</h5>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
                
            </div>
        </div>
    </section>
    <!-- Related Product Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="../../../resources/fragments/footer.jsp"></jsp:include>
    <!-- Footer Section End -->
	
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
<<<<<<< HEAD
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
=======
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
>>>>>>> branch 'main' of https://github.com/pds07208/itwillFinalProject.git
    <script src="${pageContext.request.contextPath }/resources/js/product/details.js"></script>
<<<<<<< HEAD
    
    <script type="text/javascript">
    	$(document).ready(function(){
    		$('.small').on('click', function(){
    			$('.product__details__pic__item--large').attr("src",$(this).attr("src"));
//     			
    		});
    	});
    	
    	$(function() {
    		// events
    	    $('.heart-icon').on('click', heart);
    	});
    	
    	function heart() {
    		alert("하트누름");
    		$('.icon_heart_alt').toggleClass(".heart-icon_active");
    	    /* var icon = this.querySelector('i');
    	    var productNum = this.getAttribute('data-productnum');
    	    if (icon.classList.contains('far')) {  // 하트 생성
    	      icon.classList.remove('far');
    	      icon.classList.add('fas');
    			$.ajax( {
    				url:'${pageContext.request.contextPath}/product/addWish',
    				data:{ 'productNum' : productNum,
    							'memId': $('.getMemId').val()
    					 },
    				success: function(rdata){ 
    				}
    			});
    	    } else { //하트제거
    	      icon.classList.remove('fas');
    	      icon.classList.add('far');
    	      $.ajax( {
    				url:'${pageContext.request.contextPath}/product/removeWish',
    				data:{ 'productNum' : productNum,
    							'memId': $('.getMemId').val()
    					 },
    				success: function(rdata){ 
    				}
    			});
    	    } */
    	}
    </script>

    
    <script type="text/javascript">
  
    	function heart() {
	    	alert("하트를 눌렀습니다.");
	        
	    	if(${'#test'}.val() == ".heart-icon"){
	    		$.ajax({
					url : "${pageContext.request.contextPath }/product/addWish",
					type : "POST",
					data : {
						productNum : '${productMap.productNum}',
						memberId : '${sessionScope.memId}',
					},
					success : function() {
						$(".heart-icon").attr("class", "heart-icon-active");
					},
					error : function(){
				        alert("error 발생");
				      }
				});
	    	}
	    	if(){
	    		$.ajax({
					url : "${pageContext.request.contextPath }/product/removeWish",
					type : "POST",
					data : {
						productNum : '${productMap.productNum}',
						memberId : '${sessionScope.memId}',
					},
					success : function() {
						$(".heart-icon").attr("class", "heart-icon-active");
					},
					error : function(){
				        alert("error 발생");
				      }
				});
	    	}
	        
	        
=======
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git

>>>>>>> branch 'main' of https://github.com/pds07208/itwillFinalProject.git
	<script type="text/javascript">
	function createRoom() {
		console.log('${productMap.productNum}');
		console.log('${sessionScope.memId}');
		console.log('${productMap.productSeller}');
		if('${sessionScope.memId}' === '') {
			alert('로그인 후 사용할 수 있습니다.');
		} else {
			$.ajax({
				url : "${pageContext.request.contextPath }/chat/room",
				type : "POST",
				data : {
					productNum : '${productMap.productNum}',
					memberId : '${sessionScope.memId}',
					seller : '${productMap.productSeller}'
				},
				success : function(response) {
					window.open('${pageContext.request.contextPath }' + response, 'chat', 'height=600, width=500, menubar=no, resizable=no, scrollbars=no, status=no, titlebar=no, toolbar=no');
				},
				error : function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			      }
			});
<<<<<<< HEAD

=======
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
		}
<<<<<<< HEAD

    </script>

    
<!--     	$(document).ready(function(){
=======
	}
	</script>
<<<<<<< HEAD
=======
    <script type="text/javascript">
    	$(document).ready(function(){
    		$('.small').on('click', function(){
    			$('.product__details__pic__item--large').attr("src",$(this).attr("src"));
//     			$('.product__details__pic__item--large').css({
//     				 "margin": "auto",
//     				 "display": "block"
//     			});
    		});
    	});
    	
    </script>
>>>>>>> branch 'main' of https://github.com/pds07208/itwillFinalProject.git
=======

    <script type="text/javascript">
    	$(document).ready(function(){
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
    		$('.small').on('click', function(){
    			$('.product__details__pic__item--large').attr("src",$(this).attr("src"));
    		});
    	});
      
<<<<<<< HEAD
    function heart() {
	    alert("하트를 눌렀습니다.");
	    $(".heart-icon").attr("class", "heart-icon-active");
		} -->
    
=======
<!--       function heart() {
      alert("하트를 눌렀습니다.");
        $(".heart-icon").attr("class", "heart-icon-active");
	    }
    </script> -->
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git

<<<<<<< HEAD
>>>>>>> branch 'main' of https://github.com/pds07208/itwillFinalProject.git
=======
<<<<<<< HEAD


=======
>>>>>>> branch 'main' of https://github.com/Doyeon557/itwillFinalProject.git
>>>>>>> branch 'main' of https://github.com/pds07208/itwillFinalProject.git
</body>

</html>