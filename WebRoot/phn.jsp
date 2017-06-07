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
	<link rel="stylesheet" type="text/css" href="css/phn.css">
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	</head>
  <body>	
  <div id="main">
  	<div id="main-title">
    	<span id="cqupt"><img width="80px" height="70px" src="img/cqupt.png"></span>
    	<span><h1> 双河水电厂无人值守系统</h1></span>
    </div>
    <div id="menu">
    	
    		<div id="zks" class="menu" style="background:#fF4F4F;color:yellow;" >中控室</div>
    		<a href="http://127.0.0.1:8088/HP/cf.jsp"><div id="cf" class="menu">厂房</div></a>
    		<a href="http://127.0.0.1:8088/HP/gykgs.jsp"><div id="gykgs" class="menu">高压开关室</div></a>
    		<a href="http://127.0.0.1:8088/HP/bgl.jsp"><div id="bgl" class="menu">办公楼</div></a>   
    		<a href="http://127.0.0.1:8088/HP/qsk.jsp"><div id="qsk" class="menu">取水口</div></a>
    		<a href="http://127.0.0.1:8088/HP/bt.jsp"><div id="bt" class="menu">坝体</div> </a>	
    		<a href="http://127.0.0.1:8088/HP/zhbf.jsp" target="blank7"><div id="zhbf" class="menu">综合布防</div> </a>
    		<a href="http://127.0.0.1:8088/history" target="blank8"><div id="lscx" class="menu">历史查询</div> </a>    		
    </div>
    
    </div>
   </body>
 </html>  
 