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
    		<div id="zks" style="background:#fF4F4F;color:yellow;" >中控室</div>
    		<a href="http://182.148.122.14:10000/HP/cf.jsp"><div id="cf">厂房</div></a>
    		<a href="http://182.148.122.14:10000/HP/gykgs.jsp"><div id="gykgs">高压开关室</div></a>
    		<a href="http://182.148.122.14:10000/HP/bgl.jsp"><div id="bgl">库房</div></a>   
    		<a href="http://182.148.122.14:10000/HP/qsk.jsp"><div id="qsk">取水口</div></a>
    		<a href="http://182.148.122.14:10000/HP/bt.jsp"><div id="bt">前池坝体</div> </a>	
    		<a href="http://182.148.122.14:10000/HP/zhbf.jsp" target="blank7"><div id="zhbf">综合布防</div> </a>
    		<a href="http://182.148.122.14:10000/history" target="blank8"><div id="lscx">历史查询</div> </a>
    		</div>
    <div id="panel">	
    	<div id="data_zks">
	    	<div id="temperature_zks">
	    	温度曲线
	    	</div>
	    	<div id="humidity_zks">
	    	湿度曲线
	    	</div>
	    	<div id="smog_zks">
	    	烟雾曲线
	    	</div>
    	</div>

    	<div id="table_zks">
    		<!-- 
    		去掉了火焰2和烟雾1、浸水
    		-->
    		<table  id="tab" border="2" cellspacing="0" >
	    	<tr name="第一行" id="tr1_hp" border="2">
		    <td> 人体<br>红外</td>
		    <td> 窗磁<br>门磁</td>
		    <td> 玻璃<br>破碎 </td>
		   
		    <td>火焰1</td>
		    <td>空气<br>质量</td>
		    
		    <td> 声光<br>报警</td>
	    </tr>
	     <tr name="第二行" id="tr2_hp">		    	     	
		    <td> <button id="iBtn1" class="Btn"></button></td>
		    <td> <button id="mBtn1" class="Btn"></button></td>
		    <td> <button id="wBtn1" class="Btn"></button></td>
		    
		    <td><button id="fBtn1" class="Btn"></button></td>
		    <td><span id="sBtn1"></span></td>
		    
		    <td> <button id="aBtn1_open" class="Btn" onclick="setflag('1')">开</button>
		    	<button id="aBtn1_close" class="Btn" onclick="setflag('0')" style="display: none;background: red;">关</button></td>
	    </tr>
	   </table> 	
       </div>
       <div id="video">
       	 <!--<img id="img1" width="100%" height="100%" src="http://192.168.201.220:80/videostream.cgi?loginuse=admin&loginpas=123456"> 
 		</img>
        -->
        <object classid="CLSID:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" id="mo" width="100%" height="100%" codebase="http://www.apple.com/qtactivex/qtplugin.cab">
  		<param name="src" value="back.GIF"><param name="allowFullScreen" value="true">  
  		<param name="qtsrc" value="rtsp://182.148.122.14:10010/user=admin&amp;password=&amp;channel=1&amp;stream=0.sdp?real_stream--rtp-caching=1000"> 
    	<param name="autoplay" value="true"><param name="autohref" value="True">
    	<param name="target" value="myself "> 
     	<param name="href" value="javaScript:void(0)">
     	<param name="loop" value="false"><param name="wMode" value="transparent">
     	<param name="controller" value="false">   <param name="scale" value="tofit">
     	<embed src="back.GIF" name="movie1" qtsrc="rtsp://182.148.122.14:10010/user=admin&amp;password=&amp;channel=1&amp;stream=0.sdp?real_stream--rtp-caching=1000" controller="false" width="100%" height="100%" loop="false" scale="tofit" wmode="Transparent" autoplay="true" kioskmode="true" enablejavasript="true" href="javaScript:void(0)" target="Myself" allowfullscreen="true" bgcolor="black" plugin="quicktimeplugin" type="video/quicktime" pluginspage="http://www.apple.com/quicktime/"> 
    	</object> 
       </div> 
       <div id="fonder">
  			copyright@cqupt
  		</div>	
     </div>  
         	
  	</div>
  		<!-- 将script放置在文档末尾，以加快文档加载速度 -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript" src="js/highcharts.js"></script>
   <script>
   		var buf1=new StringBuffer();	
   		buf1.append(localStorage.getItem("tem1"));

   		var buf3=new StringBuffer();	
   		buf3.append(localStorage.getItem("hum1"));

   		var buf5=new StringBuffer();	
   		buf5.append(localStorage.getItem("smog1"));
   		var buf6=new StringBuffer();	
   		buf6.append(localStorage.getItem("smog2"));
 		var s1 =parseFloat(buf1);
   		
   		var s3 =parseFloat(buf3);
   		
   		var s5 =parseFloat(buf5);
   		var s6 =parseFloat(buf6);
   		
 //绘制点线图*********************************************************
        Highcharts.setOptions({
            global: {
                useUTC: false//确认时区
            }
        });
        
        
/********************温度表 *************************************************************/
        $('#temperature_zks').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 5,
                backgroundColor:'#000',
                events: {
                    load: function() {
    
                        // set up the updating of the chart each second
                        var series0 = this.series[0];
                        var series1 = this.series[1];
                        var series2 = this.series[2];
                        var series3 = this.series[3];
                        setInterval(function() {
                        	var buf_tem1=new StringBuffer();	
   							buf_tem1.append(localStorage.getItem("tem1"));
 							var tem1 =parseFloat(buf_tem1);
 							
 							
 							
 							
                            var x = (new Date()).getTime(); // current time
                            var y0 =tem1;


                            series0.addPoint([x, y0], true, true);

                           // series2.addPoint([x, y2], true, true);
                           // series3.addPoint([x, y3], true, true);
                           
                        }, 3000);
                    }
                }
            },
            title: {
                text: '中控室温度值 ',
                x: -20, //center
                style:{
                	color:'green'
                },
            },
            credits:{
            	enabled:false			//去掉默认的右下角网址 
            },

            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150,
                gridLineColor:'#fff',
                gridLineDashStyle:'Dash',
                labels:{
               	     y:20,
                	style:{
                		color:'green',
                		
                	}
                },
                //labels:{y:20},
                lineWidth:5,
                gridLineWidth:1,
            },
            yAxis: {
                //min: 0,//零点值
                //max:40,
                tickInerval:5,
                title: {
                    text: 'Temperature (°C)',
                    style:{
                	color:'green'
                	},
                },
             	gridLineDashStyle:'Dash',
                lineWidth:5,
                labels:{
               		 //y:-20,
                	style:{
                		color:'green',
                		
                	}
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                
                }]
            },
            tooltip: {
                crosshairs: true,
                shared: true,
                valueSuffix: '°C'
                },
            legend:{
            	//backgroundColor:'red',
            	itemStyle:{
                	color:'white'
                	},
                itemHoverStyle:{
                	color:'yellow'
                },
            	
            	
            },
            series: [{
                name: '温度1',
                color:'red',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s1
                           
                        });
                    }
                    return data;
                })()
            }]
        });
/********************湿度表 *************************************************************/
$('#humidity_zks').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 5,
                backgroundColor:'#000',
                events: {
                    load: function() {
    
                        // set up the updating of the chart each second
                        var series0 = this.series[0];
                        var series1 = this.series[1];
                        setInterval(function() {

 							
 							var buf_hum1=new StringBuffer();	
   							buf_hum1.append(localStorage.getItem("hum1"));
 							var hum1 =parseFloat(buf_hum1);

 							
 							
                            var x = (new Date()).getTime(); // current time
                            var y2 =hum1; 
                           series0.addPoint([x, y2], true, true);
                     }, 3000);
                    }
                }
            },
            title: {
                text: '中控室湿度值 ',
                x: -20, //center
                style:{
                	color:'green'
                },
            },
            credits:{
            	enabled:false			//去掉默认的右下角网址 
            },
			legend:{
            	//backgroundColor:'red',
            	itemStyle:{
                	color:'white'
                	},
                itemHoverStyle:{
                	color:'yellow'
                },
            	
            	
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150,
                gridLineColor:'#fff',
                gridLineDashStyle:'Dash',
                labels:{
                	y:20,
                	style:{
                		color:'green',               		
                	}
                },
                //labels:{y:20},
                lineWidth:5,
                gridLineWidth:1,
            },
            yAxis: {
                //min: 0,//零点值
                //max:40,
                tickInerval:5,
                title: {
                    text: 'Humidity (%rh)',
                    style:{
                	color:'green'
                	},
                },
             	gridLineDashStyle:'Dash',
                lineWidth:5,
                labels:{
                	style:{
                		color:'green',
                		y:'20',
                	}
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                
                }]
            },
            tooltip: {
                crosshairs: true,
                shared: true,
                valueSuffix: '%rh'
                },
            series: [{
                name: '湿度1',
                color:'blue', 
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s3
                           
                        });
                    }
                    return data;
                })()
            }]
        });
/********************烟雾表 *************************************************************/
$('#smog_zks').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 5,
                backgroundColor:'#000',
                events: {
                    load: function() {
    
                        // set up the updating of the chart each second
                       // var series0 = this.series[0];
                        var series1 = this.series[0];
                        setInterval(function() {

 							
 							//var buf_smog1=new StringBuffer();	
   							//buf_smog1.append(localStorage.getItem("smog1"));
 							//var smog1 =parseFloat(buf_smog1);
 							
 							var buf_smog2=new StringBuffer();	
   							buf_smog2.append(localStorage.getItem("smog2"));
 							var smog2 =parseFloat(buf_smog2);
 							
 							
                            var x = (new Date()).getTime(); // current time
 
                           // var y2 =smog1;
                            var y3 =smog2;

                           // series0.addPoint([x, y2], true, true);
                            series1.addPoint([x, y3], true, true);
                           // series2.addPoint([x, y2], true, true);
                           // series3.addPoint([x, y3], true, true);
                           
                        }, 3000);
                    }
                }
            },
            title: {
                text: '中控室烟雾值 ',
                x: -20, //center
                style:{
                	color:'green'
                },
            },
            credits:{
            	enabled:false			//去掉默认的右下角网址 
            },
			legend:{
            	//backgroundColor:'red',
            	itemStyle:{
                	color:'white'
                	},
                itemHoverStyle:{
                	color:'yellow'
                },
            	
            	
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150,
                gridLineColor:'#fff',
                gridLineDashStyle:'Dash',
                labels:{
                y:20,
                	style:{
                		color:'green',
                		
                	}
                },
                //labels:{y:20},
                lineWidth:5,
                gridLineWidth:1,
            },
            yAxis: {
                //min: 0,//零点值
                //max:40,
                //min:0,
                tickInerval:5,
                title: {
                    text: 'Smog (ppm)',
                    style:{
                	color:'green'
                	},
                },
             	gridLineDashStyle:'Dash',
                lineWidth:5,
                labels:{
                	
                	style:{
                		color:'green',
                		
                	}
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                
                }]
            },
            tooltip: {
                crosshairs: true,
                shared: true,
                valueSuffix: 'ppm'
                },
            series: [/*{
                name: '烟雾1',
                color:'red', 
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s5
                           
                        });
                    }
                    return data;
                })()
            },*/{
                name: '烟雾',
                color:'yellow',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s6
                        });
                    }
                    return data;
                })()
            }]
        });
   </script>
    </script>
    
  </body>
</html>
