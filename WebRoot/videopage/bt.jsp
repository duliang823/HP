<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>双河水电厂无人值守系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<link rel="shortcut icon" href="my.ico"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script  src="js/my.js" type="text/javascript"></script>	
	</head>
  <body>	
  <div id="main">
  	
    <div id="panel" width="680px" height="480px">	  
		 <img id="img1" width="680" height="400" src="http://192.168.200.221:554/videostream.cgi?loginuse=admin&loginpas=123456"> 
 	</img>
       </div> 
     </div>         
  	</div>
  </body>
</html>
