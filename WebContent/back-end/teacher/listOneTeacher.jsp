<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.teacher.model.*"%>
<% 
TeacherVO teacherVO = (TeacherVO) request.getAttribute("teacherVO");

%>
 
 <jsp:useBean id="membersSvc" scope="page" class="com.members.model.MembersService" />   
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>老師單一查詢頁面</title>
<style type="text/css">
h2.form-title {
	text-align: center;
	margin-bottom: 0px;
}

div.signup-content {
	padding-top: 0px;
}

div.signup-form {
	margin-left: 0px;
}

input#name {
	padding: 0px 0px 0px 30px;
	width: 300px;
}

#table {
	border: 1px solid black;
}

tr, th {
	width: 300px;
}

tr, td {
	width: 200px;
	text-align: center;
}

#pic {
	width: 100px;
	height: 100px;
}
h2.h2{
margin:0px;
}
</style>
<!-- Font Icon -->

<!-- Main css -->
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<h2 class="form-title">Education單一老師資料</h2>

				<div class="signup-content">

					<div class="signup-form">

						<table id="table">
							<tr>
								<th>老師頭像</th>
								<th>老師編號</th>
								<th>會員編號</th>
								<th>老師姓名</th>
								<th>老師簡介</th>
								<th>專業證照1</th>
								<th>專業證照2</th>
								<th>資格不符原因</th>
								<th>資格狀態</th>
							</tr>
							
								<tr>

									<td><img id="pic"
										src="<%=request.getContextPath()%>/back-end/members/MprofileDisplayServlet?MEMNO=${teacherVO.memno}"
										alt="No Image Uploaded"></td>
										
									<td>${teacherVO.tchrno}</td>
									<td>${teacherVO.memno}</td>
									<td><c:forEach var="membersVO" items="${membersSvc.all}">
                    <c:if test="${teacherVO.memno==membersVO.memno}">
	                    ${membersVO.memname}
                    </c:if>
                </c:forEach></td>
									<td>
									${teacherVO.tchrintro}
									</td>									
									
									
									
									
									
									<td><img id="pic" src="<%=request.getContextPath()%>/back-end/teacher/TchrcertDisplayServlet1?TCHRNO=${teacherVO.tchrno}" 
                alt="No Image Uploaded"></td>
                
                <td><img id="pic" src="<%=request.getContextPath()%>/back-end/teacher/TchrcertDisplayServlet2?TCHRNO=${teacherVO.tchrno}" 
                alt="No Image Uploaded"></td>
                
                
                 <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/teacher/teacher.do">
                 <td>
                  <h2 class="h2" style="color:red;">${teacherVO.rejreason}</h2>
                 <select name="rejreason">
               <option value="其它">其它
                <option value="銀行帳號:填寫錯誤">銀行帳號:填寫錯誤
                <option value="個人經歷描述:不夠詳盡">個人經歷描述:不夠詳盡
                <option value="專業證照:證照不符">專業證照:證照不符
                <option value="專業證照:證照過期">專業證照:證照過期
                <option value="專業證照:模糊不清">專業證照:模糊不清
                
                
                </select>
                </td>
                <td>
                <h2 class="h2" style="color:green;">${teacherVO.tchrstatus}</h2>
                <select name="tchrstatus">
                <option value="${teacherVO.tchrstatus}">${teacherVO.tchrstatus}
                <option value="已通過">已通過
                <option value="未通過">未通過
                
                </select>
                 <input type="hidden" name="tchrno" value="${teacherVO.tchrno}">
                <input type="hidden" name="action" value="updateStatus">
                 <input type="submit" value="修改">
              
                
                </td>
                 </FORM>
               
                
									
									
									
								</tr>
						</table>
						<a class="form-submit" href="<%=request.getContextPath()%>/back-end/teacher/select_teacher.jsp">回首頁</a>


					</div>

				</div>
			</div>
		</section>
</div>



		<!-- JS -->
		
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>