<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Cs_write_nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Cs_write_style.css" type="text/css">
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
		
	
	$("#file").on('change',function(){
		  var fileName = $("#file").val();
		  $(".upload-name").val(fileName);
		});

// 	    $('#button1').click(function(){
// 	    	debugger;
// 	        var $fileUpload = $("input[type='file']");
// 	        if (parseInt($fileUpload.get(0).files.length)>3){
// 	        alert("???????????? ????????? ?????? ??????????????? (?????? 3???)");
// 	        return false;
// 	        }
// 	    }); 
	    
	    
	    

		
		
	    
	    
	    
	$("#file").on('change',function(e){
// 			var formData = new FormData();
//	 		  var inputFile = $('#file');
//	 		  var files = inputFile[0].files;
			var files = e.target.files;
			  
//	 		  console.log(files);
//	 		  alert(console.log(files));
			  
			  
			debugger;
//	 		  formData.append('file', '??????????????????????????????????????????????????????');
//	 		  formData.set('file', '111');
//	 		  formData.append('file', files[1]);
			  
			var allFiles ="";
			for(var i = 0; i < files.length; i++){
//	 			      formData.set('file', files[i]);
			      allFiles += files[i].name;
//				       formData.key =  files[i];

			 }


			//??????????????? val??? ?????????
			$(".upload-name").val(allFiles);
//	 		  alert("???????????? ?????? ????????? ?????? "+formData.has(file));
//	 		  alert("????????? value ?????? "+formData.get.(file));
			  
			  
			  
			});
	
	$('#file').on('change',function(){
        var $fileUpload = $("input[type='file']");
        if (parseInt($fileUpload.get(0).files.length)>3){
        alert("???????????? ????????? ?????? ??????????????? (?????? 3???)");
        $('.upload-name').val("????????????..");
        return false;
        }
    });	
		

});
</script>


<script type="text/javascript">
	function selectCategoryField() {
		var value = document.getElementById('categoryField').value;
		document.getElementById('categoryFieldHidden').value = value;
	}



	function check() {
		if (document.getElementById("categoryFieldHidden").value=="") {
			alert("??????????????? ??????????????????")
			return false;
		}
		if (document.getElementById("cs_sub").value=="") {
			alert("????????? ???????????????")
			document.getElementById("cs_sub").focus();
			return false;
		}
	}
	
//????????? ?????? ??????
$(document).ready(fnMove);
function fnMove(){
	 if ($('.contextPath').val() != "") {
		 $('html, body').animate({scrollTop : 250}, 400);
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

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>?????????</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->    

    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <form  action="${pageContext.request.contextPath }/customerservice/writePro" method="post" enctype="multipart/form-data"  onsubmit="return check()" >
	                <input type="hidden" name="memNname" value="${sessionScope.memNname }">
					<input type="hidden" name="memId" value="${sessionScope.memId }">
					<input type="hidden" id="categoryFieldHidden" name="csCategory" value="${dto.csCategory}">
					<input type="hidden" name="csProcess" value="????????????">
					
					
				<div class="row">
					<div class="col-lg-12 text-center category">
						<p>????????????</p>
						<select id="categoryField" onchange="selectCategoryField()">
							<option value="">??????</option>
							<option value="????????????">????????????</option>
							<option value="?????????">?????????</option>
							<option value="????????????">????????????</option>
						</select>
					</div>	
                
	            	
                    <div class="col-lg-12 text-center">
                        <input type="text" type="text" name="csSub" id="cs_sub" placeholder="????????? ??????????????????.">
                        <div class="file_box">
	                        <input type="file" multiple="multiple" name="multiFile" class ="uploadfile" id="file" style="display:none;">
	                        <label for="file">????????????</label>
	                        <input type="text" class="upload-name"  value="????????????.." placeholder="????????????..">
                    	</div>
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea name="csContent" placeholder="????????? ??????????????????."></textarea>
                    </div>
                    <div class="col-lg-12 text-center">
                    	<input type="checkbox" name="csSecret" value="Y"><span class="secretbtn">?????????</span>
                    </div>
                    <div class="col-lg-12 text-center">
                        <button type="submit" class="site-btn" id = "button1">???????????????</button>
                    </div>
                    	
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->

	<!-- Footer Section Begin -->
    <%@include file = "/resources/fragments/footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>



</body>

</html>



