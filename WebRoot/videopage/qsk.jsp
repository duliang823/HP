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
       <div id="video_bgl" width="680px" height="480px">
        <object classid="CLSID:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" id="mo" width="680px" height="480px" codebase="http://www.apple.com/qtactivex/qtplugin.cab">
  		<param name="src" value="back.GIF"><param name="allowFullScreen" value="true">  
  		<param name="qtsrc" value="rtsp://192.168.200.213:554/user=admin&amp;password=&amp;channel=1&amp;stream=0.sdp?real_stream--rtp-caching=100"> 
    	<param name="autoplay" value="true"><param name="autohref" value="True">
    	<param name="target" value="myself "> 
     	<param name="href" value="javaScript:void(0)">
     	<param name="loop" value="false"><param name="wMode" value="transparent">
     	<param name="controller" value="false">   <param name="scale" value="tofit">
     	<embed src="back.GIF" name="movie1" qtsrc="rtsp://192.168.200.213:554/user=admin&amp;password=&amp;channel=1&amp;stream=0.sdp?real_stream--rtp-caching=100" controller="false" width="680px" height="400px" loop="false" scale="tofit" wmode="Transparent" autoplay="true" kioskmode="true" enablejavasript="true" href="javaScript:void(0)" target="Myself" allowfullscreen="true" bgcolor="black" plugin="quicktimeplugin" type="video/quicktime" pluginspage="http://www.apple.com/quicktime/"> 
    	</object>
       </div> 
     </div>         
  	</div>
  </body>
</html>
