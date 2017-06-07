<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>双合教学科研电厂无人值守系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<link rel="shortcut icon" href="my.ico"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<link rel="stylesheet" type="text/css" href="css/hp.css">
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script  src="js/my.js" type="text/javascript"></script>	
	</head>
  <body>	
  <div id="main">
  	<div id="main-title">
    	<span id="cqupt"><img width="80px" height="70px" src="img/cqupt.png"></span>
    	<span><h1> 双合教学科研电厂无人值守系统</h1></span>
    	</div>
    		<div id="menu">
    		<a href="http://182.148.122.14:10000/HP"><div id="zks"  >中控室</div></a>
    		<a href="http://182.148.122.14:10000/HP/cf.jsp"><div id="cf">厂房</div></a>
    		<a href="http://182.148.122.14:10000/HP/gykgs.jsp"><div id="gykgs">高压开关室</div></a>
    		<a href="http://182.148.122.14:10000/HP/bgl.jsp"><div id="bgl" >库房</div></a>
    		<a href="http://182.148.122.14:10000/HP/qsk.jsp"><div id="qsk" >取水口</div> </a>
    		<div id="bt" style="background:#fF4F4F;color:yellow;">前池坝体</div>		
    		<a href="http://182.148.122.14:10000/HP/zhbf.jsp" target="blank7"><div id="zhbf">综合布防</div> </a>
    		<a href="http://182.148.122.14:10000/history" target="blank8"><div id="lscx">历史查询</div> </a>
    		</div>
    <div id="panel">	
    	<div id="data_cf">
	    	<!--<div id="wait_cf">
	    	预留设备曲线
	    	</div>
    	--></div>

       <div id="video_qsk">
        <img id="img1" width="100%" height="100%" src="http://182.148.122.14:10015/videostream.cgi?loginuse=admin&loginpas=123456"> 
 	</img>
       </div> 
       <div id="fonder">
  			copyright@cqupt
  		</div>	
     </div>  
         	
  	</div>
  		<!-- 将script放置在文档末尾，以加快文档加载速度 -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript" src="js/highcharts.js"></script>   
  </body>
</html>
