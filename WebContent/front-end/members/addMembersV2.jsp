<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.members.model.*"%>
<%String inform = (String)request.getAttribute("inform"); %>

<%@ include file="/index/front-index/headtest.jsp" %>

<html lang="en">
<head>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.3/sweetalert2.js" type="text/javascript"></script>
    <!-- Main css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/members/addMembers_css/style.css">
<%--     <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/members/nav_css_ForSignIn&addMembers/css/bootstrap.min.css"> --%>
<%--     <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/members/nav_css_ForSignIn&addMembers/css/nivo-lightbox.css"> --%>
<%--     <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/members/nav_css_ForSignIn&addMembers/css/animate.css"> --%>
<%--     <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/members/nav_css_ForSignIn&addMembers/css/main.css"> --%>
<%--     <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/members/nav_css_ForSignIn&addMembers/css/responsive.css"> --%>
</head>
<style>










input.input{
width:300px;
}

img#preview_progressbarTW_img{
width:400px;
height:400px;

position: absolute;
 z-index:1;

-webkit-box-shadow: 3px 3px 5px 5px #BEBEBE;
	-moz-box-shadow: 3px 3px 5px 5px #BEBEBE;
	box-shadow: 3px 3px 5px 5px #BEBEBE;
	
    margin-left: 440px;
    margin-top: 235px;
    boder-radius: 10px;
    border-radius: 20px;
}
h2.form-title{
width:600px;
height:400px;
position: absolute;
 z-index:1;
font-size:150px;
font-family:'Gochi Hand';
margin:-230px 0 0 130px;

}
div.signup-form {
padding-top:130px;
}


img.icon{
width:36px;
height:36px;
position: absolute;
}
 input.input{
 padding:6px 50px;
 }
 
 section#copyright{
 height:400px;
 }
 .help-block.error {
     margin-bottom: 5px;
    }
input.input{
font-family:'Gochi Hand';
}
label.error{
padding-left:160px;
position: absolute;
color:red;
margin-top:0px;
}
div#msg{
   margin-left: 140px;
    width: 100%;
    height: 100px;
    position: absolute;
    padding-top: 165px;

}
div.signup-image{
   width: 400px;
    height: 400px;
    position: absolute;
    z-index: 5;
    margin-left: 550px;
    margin-top: 650px;

}
a.signup-image-link{
margin-right:200px;
margin-top:20px;
}
div.main{
background: url("<%=request.getContextPath()%>/front-end/members/assets/img/bgPic.png");
}


</style>



<body>
<!-- <nav class="navbar navbar-expand-md bg-inverse fixed-top scrolling-navbar"> -->
<!--             <div class="container"> -->
<!--                 左上角LOGO Start -->
<%--                 <a href="<%=request.getContextPath()%>/front-end/members/indexV1.jsp" class="navbar-brand"><img src="<%=request.getContextPath()%>/front-end/members/nav_css_ForSignIn&addMembers/img/logo.svg" alt=""> --%>
<!--                     <div id="logo">Xducation</div> -->
<!--                 </a> -->
<!--                 左上角LOGO End -->
<!--                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--                     <i class="lni-menu"></i> -->
<!--                 </button> -->
<!--                 <div class="collapse navbar-collapse" id="navbarCollapse"> -->
<!--                     <ul class="navbar-nav mr-auto w-100 justify-content-end clearfix"> -->
<!--                         <li class="nav-item"> -->
<!--                             <a class="nav-link" href="#"> -->
<!--                                 進入搜尋&nbsp;<i class="lni-search"></i> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="nav-item"> -->
<!--                             <a class="nav-link" href="#"> -->
<!--                                 精選課程&nbsp;<i class="lni-leaf"></i> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="nav-item"> -->
<!--                             <a class="nav-link" href="#"> -->
<!--                                 名人講座&nbsp;<i class="lni-bulb"></i> -->
<!--                             </a> -->
<!--                         </li> -->
                       
<!--                        <li class="nav-item"> -->
<%--                             <a class="nav-link" href="<%=request.getContextPath()%>/front-end/members/signIn.jsp" style="color: #0099CC"> --%>
<!--                                 我要登入&nbsp;<i class="lni-home"></i> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         已登入 End -->
<!--                     </ul> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </nav> -->

    <div class="main">
    

        <!-- Sign up form -->
        <section class="signup">
            <div class="container" style="box-shadow: 3px 3px 12px #0099CC;">
            <a href="indexV1.jsp"><img  id='preview_progressbarTW_img' src="<%=request.getContextPath()%>/front-end/members/assets/img/head/01.png" alt="sing up image"></a>
            <div class="signup-image">
             <a href="<%=request.getContextPath()%>/front-end/members/signIn.jsp" class="signup-image-link" style="font-family:'Gochi Hand';">I am already member</a>
                    
                        <a href="indexV1.jsp"></a>
                        <c:if test="${not empty errorMsgs}">
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	
</c:if>
                       </div>
            <div id="msg"></div>
                <div class="signup-content" >
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" id="myform" class="register-form" ACTION="<%=request.getContextPath()%>/members/members.do" id="register-form" enctype="multipart/form-data">
                            <div class="form-group">
                               <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/memacc.svg"> <label for="memacc"></label>
                               <input  value="${requestScope.membersVO.memacc}" id="memacc" name="memacc" class="input" onblur="sendRequest()" placeholder="Account"/>
                            </div>
                             <div class="form-group">
                             <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/password.svg">
                                <label for="mempwd"></label><div id="msg2"></div>
                                <input style="font-family:'Gochi Hand';" type="password" value="" id="mempwd" class="input" name="mempwd" placeholder="Password"/>
                            </div>

                            <div class="form-group">
                                <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/Rmempwd.svg"><label for="Rmempwd"></label><div id="msg3"></div>
                                <input type="password" id="Rmempwd" name="Rmempwd" class="input" placeholder="Repeat  password"/>
                            </div>
                            <div class="form-group">
                            <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/id-card.svg" alt="">
                                <label for="memname"></label><div id="msg4"></div>
                                <input type="text" id="memname" value="${requestScope.membersVO.memname}" class="input" name="memname" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/nickname.svg" alt="">
                                <label for="nkname"></label><div id="msg5"></div>
                                <input type="text" id="nkname" value="${requestScope.membersVO.nkname}" class="input" name="nkname" placeholder="Your Nickname"/>
                            </div>
                            <div class="form-group">
                                <img  class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/iphone.svg" alt="">
                                <label for="mphone"></label><div id="msg6"></div>
                                <input type="text" id="mphone" value="${requestScope.membersVO.mphone}" class="input" name="mphone" placeholder="Phone Number"/>
                            </div>
                            <div class="form-group">
                               <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/new-email.svg" alt="">
                                <label for="memail"></label><div id="msg7"></div>
                                <input type="email" id="memail" value="${requestScope.membersVO.memail}" class="input" name="memail" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/birthday-present.svg" alt="">
                                <label for="name"></label>
                                <input type="text" name="membday" value="${requestScope.membersVO.membday}" class="input" id="f_date1" value=" " placeholder="Your Birthday" />
                            </div>
                            <div class="form-group">
                               <img class="icon" src="<%=request.getContextPath()%>/front-end/members/signIn&updateMembers_css/images/pictures.svg" alt="">
                                <label for="name"></label>
                                <input type="file" onchange="readURL(this)" targetID="preview_progressbarTW_img" id="picture" class="input" name="picture" placeholder="Your Profile"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                               <%--  <input id="inform" type="hidden" value="${inform}"> --%>
                                <input type="hidden" name="action" value="insert">
                                <input type="submit" style="font-family:'Gochi Hand'" id="register" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    
                    
                </div>
            </div>
            <footer id="footer" >
        <section id="copyright" class="">
            <div >
                <div >
                    <div >
                        <div class="copyright-content">Xducation<p><a href="#">關於我們</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">其他服務</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">網站地圖</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </footer>
        </section>
         
        </div>       
         </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

<% 
  java.sql.Date membday = null;
  try {
	  membday = membersVO.getMembday();
   } catch (Exception e) {
	    membday = new java.sql.Date(System.currentTimeMillis());
   }
%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/front-end/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/front-end/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/front-end/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
 
</style>

<script type="text/javascript">
/* $(function(){
    $('#myform').validate({
    /* 常用檢測屬性
   required:必填
   noSpace:空白
   minlength:最小長度
   maxlength:最大長度
   email:信箱格式
   number:數字格式
   url:網址格式https://www.minwt.com
   */
  /*  onkeyup: function(element, event) { */
     //去除左側空白
  /*    var value = this.elementValue(element).replace(/^\s+/g, "");
     $(element).val(value);
    },
    rules: {
      memacc: {
        required: true,
        noSpace:true
      },
      mempwd: {
          required: true,
          rangelength:[6,16],
          noSpace:true
          
        },
        Rmempwd: {
            required: true,
            rangelength:[6,16],
            equalTo:"#mempwd"
            
          },
          memname:{
              required: true,
              rangelength:[2,5],
              
            },
            nkname:{
                required: true,
                rangelength:[2,10],
                
              },
      mphone:{
        required: true,
        minlength: 10,
        number: true
      },
      memail: {
        required: true,
        email: true
      }
    },
    
    
    
    
    
    messages: {
      memacc: {
        required:'會員帳號:不可空白'
      },
      mempwd: {
          required: '會員密碼:不可空白',
          rangelength:'長度為6~16',
          
        },
        Rmempwd: {
            required: '重複密碼:不可空白',
            rangelength:[6,16],
            equalTo:"重複密碼:必須一致",
          },
          memname:{
              required:'會員姓名:不可空白',
              rangelength:'字數必須2~5字',
            },
            nkname:{
                required:'會員暱稱:不可空白',
                rangelength:'字數必須2~10字',
              },
              mphone:{
                  required: '會員號碼:不可空白',
                  minlength:'手機號碼為10碼',
                  number: '必須為'
                },
                memail: {
                  required: ,
                  email: true
                }
    },
    submitHandler: function(form) {
      form.submit();
    }
});

});
 */ 




	
	
	
	
	
	
	
	
	/*  swal('老師資格審核中', '請耐心等候1~3個工作天，一但審核完畢，即會立刻通知', 'info').then(function(){
		 myform.submit();
	 }); */





 
 
















function readURL(input){

	  if(input.files && input.files[0]){

	    var imageTagID = input.getAttribute("targetID");

	    var reader = new FileReader();

	    reader.onload = function (e) {

	       var img = document.getElementById(imageTagID);

	       img.setAttribute("src", e.target.result)

	    }

	    reader.readAsDataURL(input.files[0]);

	  }

	}





        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
           timepicker:false,       //timepicker:true,
           step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
           format:'Y-m-d',         //format:'Y-m-d H:i:s',
           value: '<%=membday%>',   // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:             '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        
        
   
        // ----------------------------------------------------------以下用來排定無法選擇的日期-----------------------------------------------------------

        //      1.以下為某一天之前的日期無法選擇
             var somedate1 = new Date('1920-01-01');
             $('#f_date1').datetimepicker({
                 beforeShowDay: function(date) {
                  if (  date.getYear() <  somedate1.getYear() || 
                           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
                           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
                     ) {
                          return [false, ""]
                     }
                     return [true, ""];
             }});

        
             //2.以下為某一天之後的日期無法選擇
             var somedate2 = new Date(new Date());
             $('#f_date1').datetimepicker({
                 beforeShowDay: function(date) {
                  if (  date.getYear() >  somedate2.getYear() || 
                           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
                           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
                     ) {
                          return [false, ""]
                     }
                     return [true, ""];
             }});


        //      3.以下為兩個日期之外的日期無法選擇 (也可按需要換成其他日期)
        //      var somedate1 = new Date('2017-06-15');
        //      var somedate2 = new Date('2017-06-25');
        //      $('#f_date1').datetimepicker({
        //          beforeShowDay: function(date) {
        //            if (  date.getYear() <  somedate1.getYear() || 
        //                 (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
        //                 (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
        //                   ||
        //                  date.getYear() >  somedate2.getYear() || 
        //                 (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
        //                 (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
        //              ) {
        //                   return [false, ""]
        //              }
        //              return [true, ""];
        //      }});


var request;
  function createXMLHttpRequest() {
    if (window.ActiveXObject) {
      request = new ActiveXObject("Microsoft.XMLHTTP");
    } else if (window.XMLHttpRequest) {
      request = new XMLHttpRequest();
    } else {
      window.alert("建議使用GOOGLE CHROME瀏覽器");
    }
  }

function processResult() {
    if ((request.readyState == 4) && (request.status == 200)) {
      var str = request.responseText;
      if(str==="non"){
        var msg = document.getElementById("msg").innerHTML ="<span style='color:#00cc00'>此帳號可以使用</span>" ;
        var register = document.getElementById("register");
        register.disabled = false;
      }else{
        var msg = document.getElementById("msg").innerHTML ="<span style='color:#cc0000'>此帳號已被註冊</span>" ;
        var register = document.getElementById("register");
        register.disabled = true;
      }
      
    }
  }
function sendRequest() {
    createXMLHttpRequest();
    request.onreadystatechange = processResult;
    var memacc = document.getElementById("memacc").value;
    if(memacc.length===0){
    	var msg = document.getElementById("msg").innerHTML = "";
    }else if(memacc.search(/[A-Za-z0-9]{6,16}/)){
    	 var msg = document.getElementById("msg").innerHTML ="<span style='color:#cc0000'>帳號格式必須是英數混合,長度為6-16碼</span>";
    	 register.disabled = true;
    	 
    }else{
    	request.open("POST", "<%=request.getContextPath()%>/front-end/members/MemaccCheckServlet", true);
	    request.setRequestHeader("Content-Type",
	        "application/x-www-form-urlencoded");
	   
	    	request.send("memacc=" + memacc);
    }
    
   
 
    	 
    
    // request.open("GET", "AccountCheckServlet?username="+username, true); 
   
    
  }
        
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

   

</html>