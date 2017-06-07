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
	<!-- <link rel="stylesheet" type="text/css" href="css/zhbf.css"> -->
	<link rel="stylesheet" type="text/css" href="css/hp.css">

	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script  src="js/my.js" type="text/javascript"></script>	
	<script type="text/javascript">
	$(document).ready(function() {	
				var t = window.setInterval("updata()",100);		 															//3S进行一次此操作 

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
				/* 报警开关1的控制 */
				$("#aBtn1_open").click(function(){
					$("#aBtn1_open").hide();$("#aBtn1_close").show();
				});
				$("#aBtn1_close").click(function(){
					$("#aBtn1_open").show();$("#aBtn1_close").hide();
						var xmlhttp;
						xmlhttp=new XMLHttpRequest();
						xmlhttp.open("POST","CmdServlet",true);				
						xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						//xmlhttp.send("fanclose=1");
						xmlhttp.send("warmcmd1=1");
				});
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
				/* 报警开关3的控制 */
					$("#aBtn3_open").click(function(){
					$("#aBtn3_open").hide();$("#aBtn3_close").show();
				});
				$("#aBtn3_close").click(function(){
					$("#aBtn3_open").show();$("#aBtn3_close").hide();
						var xmlhttp;
						xmlhttp=new XMLHttpRequest();
						xmlhttp.open("POST","CmdServlet",true);				
						xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						//xmlhttp.send("fanclose=1");
						xmlhttp.send("warmcmd5=1");
				});
				/* 报警开关4的控制 */
					$("#aBtn4_open").click(function(){
					$("#aBtn4_open").hide();$("#aBtn4_close").show();
				});
				$("#aBtn4_close").click(function(){
					$("#aBtn4_open").show();$("#aBtn4_close").hide();
						var xmlhttp;
						xmlhttp=new XMLHttpRequest();
						xmlhttp.open("POST","CmdServlet",true);				
						xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						//xmlhttp.send("fanclose=1");
						xmlhttp.send("warmcmd7=1");
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
    		<a href="http://182.148.122.14:10000/HP/bgl.jsp"><div id="bgl" >库房</div></a>
    		<a href="http://182.148.122.14:10000/HP/qsk.jsp"><div id="qsk" >取水口</div> </a>
    		<a href="http://182.148.122.14:10000/HP/bt.jsp"><div id="bt">前池坝体</div> </a>	
    		<div id="zhbf" style="background:#fF4F4F;color:yellow;">综合布防</div>
    		<a href="http://182.148.122.14:10000/history" target="blank8"><div id="lscx">历史查询</div> </a>
    		</div>
    <div id="panel">	
    	<div id="table">
	    <table  border="2" cellspacing="0" >
	    <tr name="第一行" id="tr1" border="2">
		    <td> </td>
		    <td> 人体<br>红外</td>
		    <td> 窗磁<br>门磁</td>
		    <td> 玻璃<br>破碎 </td>
		    <td>浸水</td>
		    <td>火焰</td>
		    <td> 声光<br>报警</td>
	    </tr>
	     <tr name="第二行" id="tr2">	
	    	     	
		    <td>中控室</td>
		    <td> <button id="iBtn1" class="Btn"></button></td>
		    <td> <button id="mBtn1" class="Btn"></button></td>
		    <td> <button id="wBtn1" class="Btn"></button></td>
		    <td></button></td>
		    <td><button id="fBtn1" class="Btn"></td>
		    <td> <button id="aBtn1_open" class="Btn" onclick="setflag('1')">开</button>
		    	<button id="aBtn1_close" class="Btn" onclick="setflag('0')" style="display: none;background: red;">关</button></td>
	    </tr>

	     </tr>
	     <tr name="第三行" id="tr3">
		    <td> 厂房</td>
		    <td><button id="iBtn2" class="Btn""></button> </td>
		    <td></td>
		    <td><button id="wBtn2" class="Btn"></button> </td>
		    <td></td>
		    <td><button id="fBtn3" class="Btn">1<button id="fBtn4" class="Btn">2</button></td>
		    <td><button id="aBtn2_open" class="Btn"onclick="setflag_2('1')"> 开</button>
		        <button id="aBtn2_close" class="Btn"onclick="setflag_2('0')"style="display: none;background: red;">关 </button></td>
	    </tr>
	    <tr name="第四行" id="tr4">
		    <td>库房</td>
		    <td> <button id="iBtn3" class="Btn"></button></td>
		    <td> <button id="mBtn3" class="Btn"></button></td>
		    <td> <button id="wBtn3" class="Btn"></button></td>
		    <td></td>
		    <td></td>
		    <td><!--<button id="aBtn3_open" class="Btn" onclick="setflag_3('1')">开</button>
		    <button id="aBtn3_close" class="Btn"onclick="setflag_3('0')"style="display: none;background: red;">关 </button> --></td>
	    </tr>

	    <tr  id="tr5" name="第五行">
		    <td>高压开关室 </td>
		    <td> <button id="iBtn4" class="Btn">1</button><button id="iBtn5" class="Btn">2</button></td>
		    <td> <button id="mBtn4" class="Btn">1</button><button id="mBtn5" class="Btn">2</button></td>
		    <td> <button id="wBtn4" class="Btn"></button></td>
		    <td> <button id="qBtn2" class="Btn"></button></td>		    
		    <td> <button id="fBtn5" class="Btn">1<button id="fBtn6" class="Btn">2</button></td>
		    <td><button id="aBtn4_open" class="Btn" onclick="setflag_4('1')">开</button> 
		    <button id="aBtn4_close" class="Btn"onclick="setflag_4('0')"style="display: none;background: red;">关 </button></td>
	    </tr>
	    </table>	 
	   </table>
	   </div>
	    <div id="fonder">
  			copyright@cqutp
  		</div>
     </div>  
        		
  	</div>
  		<!-- 将script放置在文档末尾，以加快文档加载速度 -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript" src="js/highcharts.js"></script>   
  </body>
</html>
