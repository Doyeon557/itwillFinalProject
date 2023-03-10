<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Pd_list_style.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/productList.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.3.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>



    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Header Section Begin -->
    <jsp:include page="../../../resources/fragments/header.jsp"></jsp:include>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
    	<jsp:include page="../../../resources/fragments/hero.jsp"></jsp:include>
    </section>
    <!-- Hero Section End -->


<!--     Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                    		<c:choose>
                    			<c:when test="${productCate ne null and productCate ne ''}">
                    				<h2>${productCate} ?????????</h2>
                    			</c:when>
                    			<c:when test="${searchText ne null and searchText ne ''}">
                    				<h2>${searchText} ?????????</h2>
                    			</c:when>
                    			<c:otherwise>
                    				<h2>???????????? ?????????</h2>
                    			</c:otherwise>
                    		</c:choose>
                        <div class="breadcrumb__option">
<!--                             <a href="./index.html">Home</a> -->
<!--                             <span>Shop</span> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!--     Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>????????????</h4>
                            <ul>
                          		<c:forEach var="map" items="${productCateList}">
	                            <li><a href="${pageContext.request.contextPath }/product/list?productCate=${map.productCate}">${map.productCate}</a></li>
	                        	</c:forEach>
                            </ul>
                        </div>
                        <div class="sidebar__item">
                            <h4>??????</h4>
                            <div class="price">
                            		<input type="hidden" id="startPrice" value="${startPrice}">
								    <input type="hidden" id="endPrice" value="${endPrice}">
							  	<form action="${pageContext.request.contextPath}/product/list">
								    <input type="hidden" name="filterValue" value="${filterValue}">
								    <input type="hidden" name="productCate" value="${productCate}">
								    <input type="hidden" name="searchText" value="${searchText}">
								    
								    
								    <input type="number" name="startPrice" id="keepStartPrice"  min="0" placeholder="0">
								    <label for="start-price">???</label>
								    <a>~</a>
								    <input type="number" name="endPrice" id="keepEndPrice"  min="0" placeholder="1000000">
								    <label for="start-price">???</label>
								  	<button type="submit" id="filter-button">??????</button>
							  	</form>
							</div>
                        </div>
                        

                        <div class="sidebar__item">
                            <div class="latest-product__text">
                                <h4>?????? ??????</h4>
                                <div class="latest-product__slider owl-carousel">
                                    <div class="latest-prdouct__slider__item">
                                    <c:set var="count" value="1" />
                                    <c:forEach var="dto" items="${popularProductList }">
                                    <c:set var="productPicture" value="${dto.productPic}"/>
                                    	<a href="${pageContext.request.contextPath}/product/details?productNum=${dto.productNum}" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(productPicture, '|')[0]}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>${dto.productTitle }</h6>
                                                <span><fmt:formatNumber value="${dto.productPrice}" type="number" />???</span>
                                            </div>
                                        </a>
                                        <c:if test="${fn:length(popularProductList) != count}">
		                                    <c:if test="${count % 3 == 0}">
			                                    </div>
			                                    <div class="latest-prdouct__slider__item">
		                                    </c:if>
	                                    </c:if>
                                    <c:set var="count" value="${count + 1}"/>
                                    </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>${productMax}</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                            
                                <div class="filter__sort">
                                    <span>??????</span>
                                    <input type="hidden" id="filterValue" value="${filterValue}">
                                    <select id="filter" class="filterList" onchange="if(this.value) location.href=(this.value);">
                                    	<c:set var="listPath1" value="${pageContext.request.contextPath}/product/list?filterValue="  />
                                    	<c:set var="listPath2" value="&productCate=${productCate}&searchText=${searchText}&startPrice=${startPrice}&endPrice=${endPrice}"  />
                                        <option id="productDate"	class="option"  value="${listPath1}productDate${listPath2}">	 ?????????</option>
                                        <option id="productReadcount" class="option" value="${listPath1}productReadcount${listPath2}">?????????</option>
                                        <option id="productPrice" 	class="option"  value="${listPath1}productPrice${listPath2}">	 ?????????</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    

                    
                    
                    
                    
                    
                    <div class="row rowOne">
                       <input type="hidden" class="contextPath" value="${contextPath}">
                       <input type="hidden" class="sesionId getMemId" value="${sessionScope.memId}">
                       <input type="hidden" class="getproductCate" value="${productCate}"> 	<!-- more ???????????? ??????????????? more????????????  -->
                       <input type="hidden" class="getsearchText" value="${searchText}">	<!-- more ???????????? ??????????????? more????????????  -->
                       <input type="hidden" class="getproductMax" value="${productMax}">	<!-- ????????? ?????? ????????? ajax?????? more ???????????? ?????? ???????????? ????????? ?????? ?????????????????? -->
	                       <c:forEach var="dto" items="${productList }">
	                       		<input type="hidden" class="getProductNum" value="${dto.productNum}"> 			<!-- ?????? ?????????????????? ????????? -->
	                       		<input type="hidden" class="productDate" value="${dto.productDate}"> 			<!-- ????????? ???????????? ???????????? ???????????? -->
	                       		<input type="hidden" class="productReadcount" value="${dto.productReadcount}"> 	<!-- ????????? ???????????? ???????????? ???????????? -->
	                       	<c:set var="productPicture" value="${dto.productPic}"/>
								<div class="col-lg-4 col-md-6 col-sm-6">
								  <div class="product__item">
								  	<div class="set-bg">
								    	<div class="product__item__pic "> 
								    		<c:set var="detailsPath" value="location.href='${pageContext.request.contextPath}/product/details?productNum=${dto.productNum}'" />
								    		
											<img onclick="${detailsPath}" src="${pageContext.request.contextPath }/resources/upload/${fn:split(productPicture, '|')[0]}" alt="">
										      <ul class="product__item__pic__hover">
										      
										      
										      
										      <c:choose>
									      		<c:when test="${sessionScope.memId eq null}">
									      			<li><a class="cantwish"><i class="far fa-heart"></i></a></li>
									      		</c:when>
									      		<c:otherwise>
									      			<c:set var="fasORfar" value="${dto.memId eq sessionScope.memId ? 'fas' : 'far'}" />
												      		<li><a class="heart-icon"  data-productnum="${dto.productNum}" ><i class="${fasORfar} fa-heart"></i></a></li>
									      		</c:otherwise> 
		 								      </c:choose>
										      
										      		
										        	
										        
										         
										        
										      </ul>
							     		</div> 
								    </div>
								    <div class="product__item__text">
								      <h6><a href="${detailsPath}">${dto.productTitle}</a></h6>
<%-- 								      <h5>${dto.productPrice}???</h5> --%>
								      <h5><fmt:formatNumber value="${dto.productPrice}" type="number" />???</h5>
								    </div>
								  </div>
								</div>
	                        </c:forEach>

                    </div>
	                        
                        <c:if test="${productList == '[]'}">
                        	<a>????????? ????????????.</a>
                        </c:if>
                    
                    
                    
                    
                    
	                    <div class="seeMoreBtncss">
						    <button id="seeMoreBtn"><span>?????????</span></button>
						</div>
					
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <%@include file = "/resources/fragments/footer.jsp" %>
    <!-- Footer Section End -->
    
    
    
<script>

// $(document).on("click",'#seeMoreBtn',function(){
// // 	alert("????");
// 	icons = document.querySelectorAll('.heart-icon').value;
// // 	alert(icons);	
	
// });

// $(document).on("click",'#seeMoreBtn',function(){
	
// 	debugger;
//   var icons = document.querySelectorAll('.heart-icon');
//   for (var i = 0; i < ${fn:length(productList)}; i++) {
//     icons[i].addEventListener('click', function() {
//       var icon = this.querySelector('i');
//       var productNum = this.getAttribute('data-productnum');
//       if (icon.classList.contains('far')) {  // ?????? ??????
//         icon.classList.remove('far');
//         icon.classList.add('fas');
        
// 		$.ajax( {
// 			url:'${pageContext.request.contextPath}/product/addWish',
// 			data:{ 'productNum' : productNum,
// 						'memId': $('.getMemId').val()
// 				 },
// 			success: function(rdata){ 
// 			}
// 		});
		
		
//       } else { //????????????
//         icon.classList.remove('fas');
//         icon.classList.add('far');
        
        
//         $.ajax( {
// 			url:'${pageContext.request.contextPath}/product/removeWish',
// 			data:{ 'productNum' : productNum,
// 						'memId': $('.getMemId').val()
// 				 },
// 			success: function(rdata){ 
// 			}
// 		});
		
		
//       }
//     });
//   }
  
// });  
</script>


<script type="text/javascript">
$(function() {
	// events
    $('.heart-icon').on('click', heart);
    $('#seeMoreBtn').on('click', moreList);
});
    
    
    
    
//functions

    
// ---------------- moreList-------------------  
    function moreList()  {
		var memId = $('.getMemId').val();
        var offset = $('.rowOne').children('div').length; 
        var limit = 9;
        
        var productCate = $('.getproductCate').val();
        var searchText = $('.getsearchText').val();
        
        var filter = $('#filterValue').val();
        
        var startPrice = $('#startPrice').val();
        var endPrice = $('#endPrice').val();
        
        
        $.ajax({
            url: '${pageContext.request.contextPath}/product/list/partial',
            data: {memId: memId,
            	   offset: offset, 
	               limit: limit, 
	               productCate: productCate, 
	               searchText: searchText,
	               filter: filter,
	               startPrice: startPrice,
	               endPrice: endPrice
	               },
            success: function(html) {
            	
            	var sesionId = $(".sesionId").val();
            	console.log(sesionId);
				var cnt = 0;
            	
            	$.each(html,function(index,item){
            		const arr = item.productPic.split("|");
            		
            		
            		let newList = ''
			            		newList+='<input type="hidden" class="getProductNum IDX" id="' +  cnt +'"' + ' value='+item.productNum+'>'
			       				newList+='<div class="col-lg-4 col-md-6 col-sm-6">'
			  					newList+=	'<div class="product__item">'
			  					newList+=		'<div class="set-bg">'
			  					newList+=			'<div class="product__item__pic ">'
			  					newList+=				'<img class="pathDetails" id="' +  cnt + '"' + 'src="../resources/upload/'+arr[0]+'" alt="">'
			  					newList+=					'<ul class="product__item__pic__hover">'
			  					
			  					
			  					
			  					if (sesionId == undefined  || sesionId == '' || sesionId == null) {
			  						newList+= '<li><a class="cantwish"><i class="far fa-heart"></i></a></li>'
								} else {
									var className = (item.memId == sesionId) ? 'fas' : 'far';
									newList+='<li><a class="heart-icon"  data-productnum="'+item.productNum+'" ><i class="' + className + ' fa-heart"></i></a></li>'
								}
			  					
			  					newList+=					'</ul>'
			  					newList+=			'</div>'
			  					newList+=		'</div>'
			  					newList+=		'<div class="product__item__text">'
			  					newList+=		'<h6><a href="#">'+item.productTitle+'</a></h6>'
			  					newList+=		'<h5>'+item.productPriceFormat+'</h5>'
			  					newList+=	'</div>'
			  					newList+='</div>'
            		
            		
	                $('.rowOne').append(newList);
			  					
			  		cnt++;			
            	});
            	
            	$('.heart-icon').off('click');
            	$('.heart-icon').on('click', heart);
            	
                var getproductMax = parseInt($('.getproductMax').val())
                if (getproductMax <= $('.rowOne').children('div').length) {
               		$('#seeMoreBtn').hide();
                }

            }
           
        });
    }
    
    
    

 // ---------------- heart------------------- 
function heart() {
	 
    var icon = this.querySelector('i');
    var productNum = this.getAttribute('data-productnum');
    if (icon.classList.contains('far')) {  // ?????? ??????
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
    } else { //????????????
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
    }
}

</script>

<script type="text/javascript">
// function like() {
// 	$('.cantwish').click(function() {
// 		if (!confirm("????????? ??? ????????? ???????????????. ????????????????????????????")) {
// 			return false;
// 		} else {
// 			 location.href="<c:url value='/member/login' />";
// 		}
// 	});
	
// }

// ??????????????? ????????? ?????? ????????? ??????????????? ??? ????????? ????????? ?????? ??? ???????????? ???????????? ????????? ??????
$(document).on("click",'.cantwish', cantwish);
//more????????? ajax??? ?????? ????????? ????????? ?????? ???????????? ?????? append?????? onlick??? ?????????
$(document).on("click",'.pathDetails', pathDetails);
//????????? ?????????????????? more?????? ?????????
$(document).ready(hidemoreBtn);
//select box (?????????,?????????,?????????...) ???????????????
$(document).ready(keepselect);
//????????? ????????? ???????????????
$(document).ready(keepMoney);
// ?????? ?????? ?????? ????????? ???????????? ???????????? ?????? ?????????
$(document).ready(fnMove);


function cantwish(){
	if (!confirm("????????? ??? ????????? ???????????????. ????????????????????????????")) {
		return false;
	} else {
		 location.href="<c:url value='/member/login' />";
	}
};


function pathDetails(){
	var getId = $(this).attr("id")
	var idx = $('#' + getId).val()
	location.href='../product/details?productNum=' + idx;
}


function hidemoreBtn() {
	var getproductMax = parseInt($('.getproductMax').val())
	   if (getproductMax <= $('.rowOne').children('div').length) {
	  		$('#seeMoreBtn').hide();
	   }
}


function keepselect() {
	var selectfilter = $('#filterValue').val();
	$('#'+selectfilter).prop("selected", true);
}


function keepMoney() {
	var startPrice = $('#startPrice').val();
	$('#keepStartPrice').attr('value',startPrice);
	var endPrice = $('#endPrice').val();
	$('#keepEndPrice').attr('value',endPrice);
}


 function fnMove(){
	 if ($('.contextPath').val() != "") {
		 $('html, body').animate({scrollTop : 250}, 400);
	}
     
 }

</script>

    

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<%--     <script src="${pageContext.request.contextPath }/resources/js/jquery.nice-select.min.js"></script> --%>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>



</body>

</html>



