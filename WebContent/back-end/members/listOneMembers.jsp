<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.members.model.*"%>
<% 
MembersVO membersVO = (MembersVO) request.getAttribute("membersVO");

%>
 
    
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>�|����@�d�߭���</title>
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
</style>
<!-- Font Icon -->

<!-- Main css -->
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<h2 class="form-title">Education��@�|�����</h2>

				<div class="signup-content">

					<div class="signup-form">

						<table id="table">
							<tr>
								<th>�|���Y��</th>
								<th>�|���s��</th>
								<th>�|���b��</th>
								<th>�|���m�W</th>
								<th>�|���ʺ�</th>
								<th>�|���ͤ�</th>
								<th>�|���q�l</th>
								<th>�|���q��</th>

								<th>�|�����U�ɶ�</th>
								<th>��檬�A</th>
							</tr>
							
								<tr>

									<td><img id="pic"
										src="<%=request.getContextPath()%>/back-end/members/MprofileDisplayServlet?MEMNO=${membersVO.memno}"
										alt="No Image Uploaded"></td>
									<td>${membersVO.memno}</td>
									<td>${membersVO.memacc}</td>
									<td>${membersVO.memname}</td>
									<td>${membersVO.nkname}</td>
									<td>${membersVO.membday}</td>
									<td>${membersVO.memail}</td>
									<td>${membersVO.mphone}</td>
									<td>${membersVO.regdate}</td>
									<td>${membersVO.memdelete}</td>

									<td>
										<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/members/members.do"
											style="margin-bottom: 0px;">
											<input type="hidden" name="memno" value="${membersVO.memno}">
											<input type="hidden" name="action" value="updatestatus">
											<input type="submit" value="�ק窱�A">
										</FORM>
									</td>
								</tr>
						</table>
						<a class="form-submit" href="<%=request.getContextPath()%>/back-end/members/select_members.jsp">�^����</a>


					</div>

				</div>
			</div>
		</section>
</div>



		<!-- JS -->
		
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>