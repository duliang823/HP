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
	<script>

	
	$(document).ready(function() {	
				var t = window.setInterval("updata()",500);		 															//3S进行一次此操作 
				//window.clearInterval(t);去掉定时器 
				//var t2= window.setInterval("img()",250);	
				//line();
				$("#voice_close").click(function(){
					$("#AlarmCmd").hide();
					$("#voice_close").hide();
					$("#voice_open").show();
				});
				$("#voice_open").click(function(){
					$("#AlarmCmd").show();
					$("#voice_close").show();
					$("#voice_open").hide();
				});
				/* 报警开关的控制 */
				/* 报警开关2的控制 */
				$("#aBtn2_open").click(function(){
					$("#aBtn2_open").hide();$("#aBtn2_close").show();
				});
				$("#aBtn2_close").click(function(){
					$("#aBtn2_open").show();$("#aBtn2_close").hide();
						var xmlhttp;
						xmlhttp=new XMLHttpRequest();
						xmlhttp.open("POST","CmdServlet",true);				
						xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						//xmlhttp.send("fanclose=1");
						xmlhttp.send("warmcmd3=1");
				});
				
		});
		</script>
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
    		<div id="bgl" style="background:#fF4F4F;color:yellow;">库房</div>  
    		<a href="http://182.148.122.14:10000/HP/qsk.jsp"><div id="qsk">取水口</div></a>
    		<a href="http://182.148.122.14:10000/HP/bt.jsp"><div id="bt">前池坝体</div> </a>
    		<a href="http://182.148.122.14:10000/HP/zhbf.jsp" target="blank7"><div id="zhbf">综合布防</div> </a>
    		<a href="http://182.148.122.14:10000/history" target="blank8"><div id="lscx">历史查询</div> </a>		
    		</div>
    <div id="panel">	
    	<div id="data_cf">
	    	<!--<div id="wait_cf">
	    	预留设备曲线
	    	</div>
    	--></div>

    	<div id="table_bgl"> 
    		<table  id="tab" border="2" cellspacing="0" >
	    	<tr name="第一行" id="tr1_hp" border="2">
		    <td> 人体<br>红外</td>
		    <td> 窗磁<br>门磁</td>
		    <td> 玻璃<br>破碎 </td>		   
		    <td> 空气<br>质量</td>
	    </tr>
	     <tr name="第二行" id="tr2_hp">		    	     	
		    <td> <button id="iBtn3" class="Btn"></button></td>
		    <td> <button id="mBtn3" class="Btn"></button></td>
		    <td> <button id="wBtn3" class="Btn"></button></td>		   
		    <td><div id="sBtn2"></td>		    
	    </tr>
	   </table> 	
       </div>
       <div id="video_bgl">
        <!--<object classid="CLSID:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" id="mo" width="100%" height="100%" codebase="http://www.apple.com/qtactivex/qtplugin.cab">
  		<param name="src" value="back.GIF"><param name="allowFullScreen" value="true">  
  		<param name="qtsrc" value="rtsp://192.168.201.213:554/user=admin&amp;password=&amp;channel=1&amp;stream=0.sdp?real_stream--rtp-caching=100"> 
    	<param name="autoplay" value="true"><param name="autohref" value="True">
    	<param name="target" value="myself "> 
     	<param name="href" value="javaScript:void(0)">
     	<param name="loop" value="false"><param name="wMode" value="transparent">
     	<param name="controller" value="false">   <param name="scale" value="tofit">
     	<embed src="back.GIF" name="movie1" qtsrc="rtsp://192.168.201.213:554/user=admin&amp;password=&amp;channel=1&amp;stream=0.sdp?real_stream--rtp-caching=100" controller="false" width="100%" height="100%" loop="false" scale="tofit" wmode="Transparent" autoplay="true" kioskmode="true" enablejavasript="true" href="javaScript:void(0)" target="Myself" allowfullscreen="true" bgcolor="black" plugin="quicktimeplugin" type="video/quicktime" pluginspage="http://www.apple.com/quicktime/"> 
    	</object>
       -->
       <img id="img1" width="100%" height="100%" src="http://182.148.122.14:10014/videostream.cgi?loginuse=admin&loginpas=123456"> 
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
