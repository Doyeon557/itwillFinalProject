<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Cs_content_bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Cs_content_nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Cs_content.css" type="text/css">
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" type="text/css"> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Cs_content_style.css" type="text/css">
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() { 
		
		$('.processChange').on('change',function() {
			
			var processFieldnum = this.value;

			if (processFieldnum == "????????????") {
				processField = 1;
			};
			if (processFieldnum == "?????????") {
				processField = 2;
			};
			if (processFieldnum == "????????????") {
				processField = 3;
			};
// 			var processField = this.value;

			alert(this.value+"?????? ?????????????????????.");
			
			$.ajax( {
				url:'${pageContext.request.contextPath}/customerservice/processChange', //????????????
				data:{'processField': processField, //?????????
							'Cs_num': $('.Cs_num').val()
					 },
				success: function(rdata){ // ??????????????? ???????????? ???????????? => ????????? ??????  //       function(????????? ?????? ??????)
// 					alert(processField);
				}
			});
			
		});
		
		
		$('.Dconfirm').click(function() {
			if (!confirm("?????? ???????????????????")) {
				return false;
			}
		});
		
		
		// ?????? ????????????
		$("#file").on('change',function(e){
			  var files = e.target.files;
			  
			  var allFiles ="";
			  for(var i = 0; i < files.length; i++){
				      allFiles += files[i].name;

			   }
			//??????????????? val??? ?????????
			  $(".upload-name").val(allFiles);
		});
		
		// ???????????? 3??? ???????????????
		$('.uploadfile').on('change',function(){
	        var $fileUpload = $("input[type='file']");
	        if (parseInt($fileUpload.get(0).files.length)>3){
	        alert("???????????? ????????? ?????? ??????????????? (?????? 3???)");
	        $('.upload-name').val("????????????..");
	        return false;
	        }
	    });		
		
		
//-------------------------------------------------------------
		
		// ????????? ????????????
		$('.reuploadfile').on('change',function(e){
			let refile = this.id.replace("reuploadfile","").toLowerCase();
// 			alert(refile);
			
			
			var files = e.target.files;
			var allFiles ="";
		  	for(var i = 0; i < files.length; i++){
			      allFiles += files[i].name;
		   	}	
	  		$('.'+ refile).val(allFiles);
		  	
		});
		
		// ???????????? 3??? ???????????????
		$('.reuploadfile').on('change',function(){
			let refile = this.id.replace("reuploadfile","").toLowerCase();

	        var $fileUpload1 = $('.reuploadfile');
	        if (parseInt($fileUpload1.get(0).files.length)>3){
	        alert("???????????? ????????? ?????? ??????????????? (?????? 3???)");
	        
	        
	        $('.'+ refile).val("????????????..");
	        return false;
	        }
	    });
		
		
		$('.save').click(function() {
			if (!confirm("????????? ??? ????????? ???????????????. ????????????????????????????")) {
				return false;
			} else {
				 location.href="<c:url value='/member/login' />";
			}
		});
		

		
		
//         $( '.movesave' ).click( function() {
//             $( '.movewirteplace' ).scrollTop( 50 );
//           } );

		
		
		
	});
</script>
<script type="text/javascript">

	function check() {
		if (document.getElementById("cs_com_content").value=="") {
			alert("?????? ???????????? ??????????????????.")
			document.getElementById("cs_com_content").focus();
			return false;
		}
	}
	
	function check1(this_) {
// 		let input = $(this_).children()[2];
		let input = $(this_).children('#cs_com_content');
// 		alert(input);

		if(input.val() == ''){
			alert("?????? ???????????? ??????????????????.")
// 			document.getElementById(input).focus();
			return false;
		}
// 		$('.cs_com_com_content')
// 		let refile = this.id.replace("cs_com_com_contentT","").toLowerCase();
// 		if (document.getElementsByClassName("refile").value=="") {
// 			alert("?????? ???????????? ??????????????????.")
// 			document.getElementById("cs_com_content").focus();
// 			return false;
// 		}
	}

	
	
//????????? ?????? ??????
$(document).ready(fnMove);
//select box (?????????,?????????,?????????...) ???????????????
$(document).ready(keepselect);

function fnMove(){
	 if ($('.contextPath').val() != "") {
		 $('html, body').animate({scrollTop : 250}, 400);
	}
}


function keepselect() {
	var  el = document.getElementById('processField');
	var  len = document.getElementById('processField').length
	var  selectfilter = $('#filterValue').val();
		  
	for (let i=0; i<len; i++) {  
		  if(el.options[i].value == selectfilter){
		   el.options[i].selected = true;
		  }
		}
}

</script>






<body>
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

    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>${dto.csSub}</h2>
                        <ul>
                            <li>${dto.memNname }</li>
                            <fmt:parseDate value="${dto.csDate}" var="Udate" pattern="yyyy.MM.dd HH:mm" />
                            <li><fmt:formatDate value="${Udate}" pattern="yyyy-MM-dd HH:mm" /></li>
                            <li>${dto.csReadcount} 
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
							  <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
							  <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
							</svg>
                            </li>  <!-- ????????? -->
                            <li>${pageDto.count} 
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-text" viewBox="0 0 16 16">
							  <path d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1H2zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/>
							  <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
							</svg>
                            </li> <!-- ?????????  -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
	                    <input type="hidden" id="processFieldHidden"  value="${dto.csProcess }">
						<input type="hidden" class="Cs_num"  value="${dto.csNum }">
                        <img src="${pageContext.request.contextPath }/resources/customerservice/img/${dto.csFile0}" alt="">
                        <img src="${pageContext.request.contextPath }/resources/customerservice/img/${dto.csFile1}" alt="">
                        <img src="${pageContext.request.contextPath }/resources/customerservice/img/${dto.csFile2}" alt="">
                        <p>${dto.csContent}</p>
<!--                         <h3>The corner window forms a place within a place that is a resting point within the large -->
<!--                             space.</h3> -->
<!--                         <p>The study area is located at the back with a view of the vast nature. Together with the other -->
<!--                             buildings, a congruent story has been managed in which the whole has a reinforcing effect on -->
<!--                             the components. The use of materials seeks connection to the main house, the adjacent -->
<!--                             stables</p> -->
                    </div>
                    
                   	<div class="button">
						<c:if test="${sessionScope.memId eq dto.memId || sessionScope.memId eq 'admin' }">
							<a href="${pageContext.request.contextPath }/customerservice/update?num=${dto.csNum}">?????????</a>
							<a class="Dconfirm" href="${pageContext.request.contextPath }/customerservice/delete?num=${dto.csNum}">?????????</a>
<!-- 								<input type="button" value="?????????"  -->
<%-- 								onclick="location.href='${pageContext.request.contextPath }/customerservice/update?num=${dto.cs_num}'"> --%>
<!-- 								<input type="button" value="?????????" class="deleteconform" -->
<%-- 								onclick="location.href='${pageContext.request.contextPath }/customerservice/delete?num=${dto.cs_num}'"> --%>
						</c:if>
							<a href="${pageContext.request.contextPath }/customerservice/list">?????????</a>
<!-- 								<input type="button" value="?????????"  -->
<%-- 								onclick="location.href='${pageContext.request.contextPath }/customerservice/list'"> --%>
					</div>
                    
                    
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="${pageContext.request.contextPath }/resources/img/blog/details/details-author.jpg" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6>${dto.memNname}</h6>
                                        <span>?????????</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>??????</span> ${dto.csCategory}</li>
                                        <li><span>????????????</span>
	                                         <c:choose>
													<c:when test="${sessionScope.memId eq 'admin'}">
															<input type="hidden" id="filterValue" value="${dto.csProcess}">
															<select id="processField" class="processChange"  onchange="processField()">
																<option value="????????????" >????????????</option>
																<option value="?????????">?????????</option>
																<option value="????????????">????????????</option>
															</select>
													</c:when>
													<c:otherwise>
														${dto.csProcess}
													</c:otherwise>
											</c:choose>
                                        </li>
<!--                                         <li><span>Tags:</span> All, Trending, Cooking, Healthy Food, Life Style</li> -->
                                        
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                        <a href="#"><i class="fa fa-envelope"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->



	
	
	
	
<%-- 	??????${pageDto.count}??? --%>
<!-- 	<section class="blog spad"> -->
        <div class="container">
            <div class="row2">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
<!-- ????????? -->
	<div class="blog__sidebar__search movewirteplace">
		<form action="${pageContext.request.contextPath }/customerservice/cs_comwritepro" method="POST" enctype="multipart/form-data" onsubmit="return check()">
		<input type="hidden" name="num" value="${dto.csNum}">
		<input type="hidden" name="csComNum1" value="${csComNum1}">
		
		<input type="text" name="csComContent" id="cs_com_content" placeholder="????????????...">
		
			<input type="file" multiple="multiple" name="multiFile" class ="uploadfile" id="file" style="display:none;" >
		    <div class="file_sec">
			    <label for="file">????????????</label>
				<c:set var="Vfiles" value=""/>
			    <input type="text" class="upload-name upload_input" value="????????????.." readonly="readonly">
	    	</div>
	    <c:choose>
	    	<c:when test="${sessionScope.memId eq null }">
	    		<button type="button" class="save"  ><span>??????</span></button>
	    	</c:when>
	    	<c:otherwise>
	    		<button type="submit" class="movesave"><span>??????</span></button> 
	    	</c:otherwise>
	    </c:choose>
		
		</form>
	</div>
<!-- ????????? ??? -->



<!-- ?????? ?????? -->
<c:set var="count" value="1" />
<c:forEach var="dto" items="${cs_comList}">
<c:if test="${dto.csComNum2 == 0 }">
<div id="commentWrap">
	<div class="profile">
		<div class="my-img">
			<img src="${pageContext.request.contextPath}/resources/customerservice/Cs_PFP.png" width="70px">
		</div>
	</div>
	<div class="comment-cont">
		<div class="cmt-info">
			<span>${dto.memId}</span>
			<span class="cmt-time">${dto.csComDate}</span>
		</div>
		<div class="cmt-cont">
			${dto.csComContent}
		</div>
		<div>
			<c:set var="Vfiles" value="${dto.csComFile0 +='???'+= dto.csComFile1 +='???'+= dto.csComFile2 }"/>
			    <a href="${pageContext.request.contextPath }/customerservice/fileDown?filename=${dto.csComFile0}">
			        ${fn:split(Vfiles, '???')[1]}
			    </a><br>
			    <a href="${pageContext.request.contextPath }/customerservice/fileDown?filename=${dto.csComFile1}">
			        ${fn:split(Vfiles, '???')[3]}
			    </a><br>
			    <a href="${pageContext.request.contextPath }/customerservice/fileDown?filename=${dto.csComFile2}">
			        ${fn:split(Vfiles, '???')[5]}
			    </a>
		</div>
		<div class="cmt-btn">
			<input type="checkbox" id="reCmtBtn${count}" style="display: none;">
			<label for="reCmtBtn${count}">????????????</label>
<!-- 				<button>????????????</button> -->
			<c:if test="${sessionScope.memId eq dto.memId || sessionScope.memId eq 'admin'}">
					<input type="button" value="??????"
					onclick="location.href='${pageContext.request.contextPath }/customerservice/cs_comdelete?csComNum1=${dto.csComNum1}&num=${dto.csNum}'" >
			</c:if>
			<div class="re-cmt">
			<div class="blog__sidebar__search">
				<form action="${pageContext.request.contextPath }/customerservice/CsComComwritepro" method="POST" id="test" enctype="multipart/form-data" onsubmit="return check1(this)">
					<input type="hidden" name=num value="${dto.csNum}">
					<input type="hidden" name=csComNum1  value="${dto.csComNum1}">
					<input type="text" class="cs_com_com_content cs_com_com_contentTcs_com_com_content${count} cs_com_com_content${count} " name="csComContent" id="cs_com_content" placeholder="????????????...">
					    <div class="file_sec">
						<input type="file" multiple="multiple" name="multiFile" class ="reuploadfile uploadfile1" id="reuploadfilefile${count}" style="display:none;" >
					    <label for="reuploadfilefile${count}">????????????</label>
						<c:set var="Vfiles" value=""/>
						<input type="text" class="file${count}" value="????????????.." readonly="readonly">
						</div>

					    <c:choose>
					    	<c:when test="${sessionScope.memId eq null}">
					    		<input type="button" class="save submit_btn" value="??????">
					    	</c:when>
					    	<c:otherwise>
					    		<input type="submit" class="submit_btn" value="??????">
				    		</c:otherwise>
				    	</c:choose>
<!-- 					<input type="submit" value="??????"> -->
				</form>
			</div>
			</div>
		</div>
		<c:if test="${dto.csYn eq 'Y'}">
		<div class="cmt-re">
			<details><!-- ???????????? ?????? -->
				<summary><span>????????????</span></summary>
<%-- 				<c:if test="${dto.cs_yn eq 'N'}"> --%>
<!-- 				<p>????????? ????????????.</p> -->
<%-- 				</c:if> --%>
				
				
					<c:forEach var="inner" items="${cs_comList}">
					<c:if test="${inner.csComNum2 != 0 && dto.csComNum1 == inner.csComNum1 }">
					<div>
						<div id="commentWrap">
							<div class="profile">
								<div class="my-img">
									<img src="${pageContext.request.contextPath}/resources/customerservice/Cs_PFP.png" width="70px">
								</div>
							</div>
							<div class="comment-cont">
								<div class="cmt-info">
									<span>${inner.memId}</span>
									<span class="cmt-time">${inner.csComDate}</span>
								</div>
								<div class="cmt-cont">
									<p>${inner.csComContent}</p>
								</div>
								<div>
									<c:set var="Vfiles" value="${inner.csComFile0 +='???'+= inner.csComFile1 +='???'+= inner.csComFile2 }"/>
									    <a href="${pageContext.request.contextPath }/customerservice/fileDown?filename=${inner.csComFile0}">
									        ${fn:split(Vfiles, '???')[1]}
									    </a><br>
									    <a href="${pageContext.request.contextPath }/customerservice/fileDown?filename=${inner.csComFile1}">
									        ${fn:split(Vfiles, '???')[3]}
									    </a><br>
									    <a href="${pageContext.request.contextPath }/customerservice/fileDown?filename=${inner.csComFile2}">
									        ${fn:split(Vfiles, '???')[5]}
									    </a>
								</div>
								<c:if test="${sessionScope.memId eq inner.memId || sessionScope.memId eq 'admin'}">
								<div class="cmt-btn">
									<input type="button" value="??????"
									onclick="location.href='${pageContext.request.contextPath }/customerservice/CsComCommdelete?csComNum2=${inner.csComNum2}&csComNum1=${inner.csComNum1}&num=${dto.csNum}'" >
								</div>
								</c:if>
							</div>
						</div>
					</div>
					</c:if>
					</c:forEach>
				
			</details><!-- ?????? ?????? ??? -->
		</div>
		</c:if>
	</div>
</div>
</c:if>
<c:set var="count" value="${count + 1}"/>
</c:forEach>	
<!-- ?????? ??? -->




<!-- ??????????????? ??????  -->
<div class="col-lg-12">
    <div class="product__pagination blog__pagination">
		<c:if test="${pageDto.startPage > pageDto.pageBlock }">
			<a href="${pageContext.request.contextPath }/customerservice/content?pageNum=${pageDto.startPage - pageDto.pageBlock}&num=${dto.csNum}">???</a>
		</c:if>
		<c:if test="${pageDto.startPage <= pageDto.pageBlock }">
			<a href="#">???</a>
		</c:if>
	
	
	
	
	<!-- // ?????? currentPage-1 -->
		<c:if test="${pageDto.currentPage > 1 }">
			<a href="${pageContext.request.contextPath }/customerservice/content?pageNum=${pageDto.currentPage-1 }&num=${dto.csNum}">< </a>
		</c:if>
		<c:if test="${pageDto.currentPage <= 1 }">
			<a href="#">< </a>
		</c:if>
	
	
	
		<c:forEach var="i" begin="${pageDto.startPage }" end="${pageDto.endPage }" step="1">
			<a href="${pageContext.request.contextPath }/customerservice/content?pageNum=${i}&num=${dto.csNum}">${i}</a> 
		</c:forEach>
	
	
	
	
	
	
	<!-- // ?????? currentPage+1 -->
		<c:if test="${pageDto.currentPage < pageDto.pageCount}">	
			<a href="${pageContext.request.contextPath }/customerservice/content?pageNum=${pageDto.currentPage +1 }&num=${dto.csNum}">></a>
		</c:if>	
		<c:if test="${pageDto.currentPage >= pageDto.pageCount}">	
			<a href="#">></a>
		</c:if>
	
	
	
	<!-- //10????????? ??????  -->
		<c:if test="${pageDto.endPage < pageDto.pageCount}">	
			<a href="${pageContext.request.contextPath }/customerservice/content?pageNum=${pageDto.startPage +  pageDto.pageBlock}&num=${dto.csNum}">??? </a>
		</c:if>	
		<c:if test="${pageDto.endPage >= pageDto.pageCount}">	
			<a href="#">???</a>
		</c:if>	


		</div>
		
		</div>
		</div>
		
		</div>
		
		
	</div>
</div>
	
	


   

    <!-- Footer Section Begin -->
    <%@include file = "/resources/fragments/footer.jsp" %>
    <!-- Footer Section End -->

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