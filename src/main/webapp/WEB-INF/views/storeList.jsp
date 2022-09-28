<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />


<!doctype html><html lang="en">
<!-- head-->
<%@ include file="include/head.jsp" %>
<body>
<!--====== PRELOADER PART START ======-->
<div class="preloader">
	<div class="loader">
		<div class="ytp-spinner">
			<div class="ytp-spinner-container">
				<div class="ytp-spinner-rotator">
					<div class="ytp-spinner-left">
						<div class="ytp-spinner-circle">
						</div>
					</div>
					<div class="ytp-spinner-right">
						<div class="ytp-spinner-circle">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--====== PRELOADER PART ENDS ======-->
<!--====== HEADER PART START ======-->
<%@ include file="include/header.jsp" %>
<!--====== HEADER PART ENDS ======-->
<!--====== PAGE TITLE PART START ======-->
<section class="page-title-area bg_cover" style="background-image: url(${assetsPath}/images/page-bg-2.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="page-title-item text-center">
				<h3 class="title">businessMY</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">사업자 마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">가게 정보 수정</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->
<!--====== BLOG STANDARD PART START ======-->
<section class="blog-standard-area pt-120 pb-150">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-8">
			<div class="blog-details mt-30 mr-20">
				<!-- 내용쓰기 -->
				<div class="blog-details-form">
					<div class="blog-details-title">
						<h3 class="title">가게 정보 조회</h3>
					</div>				
				
					 <div class="blog-details-form-item">
						<form role="form" action="${pageContext.request.contextPath }/storeList" id="storeList_form" name="storeList_form" method="post">
							<div class="row">
								<div class="col-lg-6">
									<div class="input-box mt-30">
										<label>가게 ID</label>
										<br> 변경 불가능
										<input type="text" id="u_s_id" name="u_s_id" value="${store.u_s_id}" readonly="true">
									</div>
									<div class="input-box mt-30">
										<label>사업자 ID</label>
										<br> 변경 불가능
										<input type="text" id="u_b_id" name="u_b_id" value="${store.u_b_id}" readonly="true">
									</div>
									<div class="input-box mt-30">
										<label>사업자 번호</label>
										<input type="text" id="s_regi_num" name="s_regi_num" value="${store.s_regi_num}" maxlength='20'>
									</div>
									<div class="input-box mt-30">
										<label>가게명</label><input type="text" id="s_name" name="s_name" value="${store.s_name}">
									</div>
									<div class="input-box mt-30">
										<label>가게 전화번호</label>
										<br> 000-0000-0000 형식으로 입력해 주세요.
										<input type="text" id="s_number" name="s_number" value="${store.s_number}" maxlength='16'>
									</div>
									<div class="input-box mt-30">
										<label>카테고리 ID</label>
										<br> 변경 불가능
										<input type="text" id="c_id" name="c_id" value="${store.c_id}" readonly="true">
									</div>
									<div class="input-box mt-30">
									<label>가게 오픈 여부</label>
									<br> 1: 오픈  2: 준비중
									<input type="text" id="s_state" name="s_state" value="${store.s_state}" maxlength='2'>

									</div>
									<div class="input-box mt-30">
										<label>대기 시간(단위: 분)</label>
										<br> 숫자로만 입력해 주세요. (1시간 10분일 경우 70으로 표기) 
										<input type="number" id="s_time" name="s_time" value="${store.s_time}" maxlength='10'>
									</div>
									<div class="input-box mt-30">
										<label>사업자 등록증</label>
										<input type="text" id="u_b_img_upload" name="u_b_img_upload" value="${store.u_b_img_upload}" readonly="true">
										<td><img src="resources/img/1.jpg" alt="1이미지" width="140px" height="100px"></td>
						                </label>
									</div>									
								<div class="col-lg-12">
									<div class="input-box mt-30">
										<button type="button" onclick="chkFunction();" id="btn_submit" class="main-btn mt-30">수정</button>
									</div>
								</div>						
							</div>
						</form>
	                 </div>
                </div>
			</div>
		</div>
		<!-- side bar -->
		<%@ include file="include/businessMY_sidebar.jsp" %>
	</div>
</div>
</section>
<!--====== BLOG STANDARD PART ENDS ======-->
<!--====== INSTAGRAM PART START ======-->
<%@ include file="include/instaPart.jsp" %>
<!--====== INSTAGRAM PART ENDS ======-->
<!--====== FOOTER PART START ======-->
<%@ include file="include/footer.jsp" %>
<!--====== FOOTER PART ENDS ======-->
<!--====== GO TO TOP PART ENDS ======-->


	
	
	<script>
	function chkFunction(){
		
		// 0) 공백 확인용
		if(($('#s_regi_num').val()).trim() == ""){
			alert('사업자 번호는 비워 둘 수 없습니다.');
			return false;
		}
		if(($('#s_name').val()).trim() == ""){
			alert('가게명은 비워 둘 수 없습니다.');
			return false;
		}
		if(($('#s_state').val()).trim() == ""){
			alert('가게 오픈 여부는 비워 둘 수 없습니다.');
			return false;
		}
		if(($('#s_time').val()).trim() == ""){
			alert('대기 시간 입력란은 비워 둘 수 없습니다.');
			return false;
		}

		// 3) 사업자 번호 유효성 검사
		var pattern= /^\d{3,3}-\d{2,2}-\d{5,5}$/;
		
		if(!pattern.test($('#s_regi_num').val())) {  
	         event.preventDefault();          
	         alert("사업자 등록 번호를 000-00-00000 형식으로 입력해 주세요.");            
	         $('#s_regi_num').val();            
	         $('#s_regi_num').focus();            
	         return false; 
	      }
		
		
		// 5) 가게 번호 유효성 검사
		var numchk = /^\d{2,3}-\d{3,4}-\d{4}$/;
		if (!numchk.test($('#s_number').val())) {       
	         event.preventDefault();      
	         alert("전화번호는 000-0000-0000 형식으로 입력해 주세요.");            
	         return false;        
	         
	      }
		
		
		// 7) 가게 오픈 여부 유효성 검사
		if(!(($('#s_state').val()) == 1 || ($('#s_state').val()) == 2)) {
	         alert("가게 오픈 여부는 1혹은 2로 입력해 주세요.");            
	         return false; 
		}
			
		
		// ★★★★★★★★★★★★★★★아래 지우지 말기★★★★★★★★★★★★★★★
	
		document.getElementById("storeList_form").submit();
		alert('수정이 완료되었습니다.');
	}
	</script>
	




</body>
</html>


