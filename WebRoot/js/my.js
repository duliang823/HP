		
		var buffer=new StringBuffer;
		var s=new Date();
        var xmlHttpRequest;
        function updata() {
            if (window.XMLHttpRequest) {//in JavaScript, if it exists(not null and undifine), it is true.
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlHttpRequest = new XMLHttpRequest();
            } else if (window.ActiveXObject) {
                // code for IE6, IE5
                xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
            } else {
                //very rare browsers, can be ignored.
            }

            if (null != xmlHttpRequest) {
                xmlHttpRequest.open("GET", "WIAPAServlet", true);
                xmlHttpRequest.onreadystatechange = ajaxCallback;

                xmlHttpRequest.send();
            }
        }

        function ajaxCallback() {
            
            if (4 == xmlHttpRequest.readyState && 200 == xmlHttpRequest.status) {
                var xmlDoc = xmlHttpRequest.responseXML;
                //xmlDoc.getElementsByTagName("data")[0].childNodes[0].nodeValue;
                //alert(xmlDoc.getElementsByTagName("infrared")[0].childNodes[0].nodeValue);
                //alert(xmlDoc.getElementsByTagName("data")[0].Value);
                //document.getElementById("div1").innerHTML = resp onseText;
        /*****   warmcmd2=1 为开声光报警器1       ******/
        /*****   warmcmd4=1 为开声光报警器2       ******/
        /*****   warmcmd6=1 为开声光报警器3       ******/
        /*****   warmcmd8=1 为开声光报警器4       ******/
		/*****   红外设备数据变化时改变颜色        ******/
		if(xmlDoc.getElementsByTagName("infrared")[0].childNodes[0].nodeValue==1){			
			 $("#iBtn1").css('background','red');send_tr1("warmcmd2=1");
		}else{$("#iBtn1").css('background','green');}
		if(xmlDoc.getElementsByTagName("infrared")[1].childNodes[0].nodeValue==1){			
			 $("#iBtn2").css('background','red');send_tr2("warmcmd4=1");
		}else{$("#iBtn2").css('background','green');}
		if(xmlDoc.getElementsByTagName("infrared")[2].childNodes[0].nodeValue==1){			
			 $("#iBtn3").css('background','red');send_tr3("warmcmd6=1");
		}else{$("#iBtn3").css('background','green');}
		if(xmlDoc.getElementsByTagName("infrared")[3].childNodes[0].nodeValue==1){			
			 $("#iBtn4").css('background','red');send_tr4("warmcmd8=1");
		}else{$("#iBtn4").css('background','green');}
		if(xmlDoc.getElementsByTagName("infrared")[4].childNodes[0].nodeValue==1){			
			 $("#iBtn5").css('background','red');send_tr4("warmcmd8=1");
		}else{$("#iBtn5").css('background','green');}
		
		/*****玻璃破碎设备数据变化时改变颜色 ****/
		if(xmlDoc.getElementsByTagName("windowsBreak")[0].childNodes[0].nodeValue==1){			
			 $("#wBtn1").css('background','red');send_tr1("warmcmd2=1");
		}else{$("#wBtn1").css('background','green');}
		if(xmlDoc.getElementsByTagName("windowsBreak")[1].childNodes[0].nodeValue==1){			
			 $("#wBtn2").css('background','red');send_tr2("warmcmd4=1");
		}else{$("#wBtn2").css('background','green');}
		if(xmlDoc.getElementsByTagName("windowsBreak")[2].childNodes[0].nodeValue==1){			
			 $("#wBtn3").css('background','red');send_tr3("warmcmd6=1");
		}else{$("#wBtn3").css('background','green');}
		if(xmlDoc.getElementsByTagName("windowsBreak")[3].childNodes[0].nodeValue==1){			
			 $("#wBtn4").css('background','red');send_tr4("warmcmd8=1");
		}else{$("#wBtn4").css('background','green');}
		
		/*****窗磁门磁破碎设备数据变化时改变颜色 ****/
		if(xmlDoc.getElementsByTagName("magnetic")[0].childNodes[0].nodeValue==1){			
			 $("#mBtn1").css('background','red');send_tr1("warmcmd2=1");
		}else{$("#mBtn1").css('background','green');}
		/*if(xmlDoc.getElementsByTagName("magnetic")[1].childNodes[0].nodeValue==1){			
			 $("#mBtn2").css('background','red');send_tr2("warmcmd4=1");
		}else{$("#mBtn2").css('background','green');}*/
		if(xmlDoc.getElementsByTagName("magnetic")[2].childNodes[0].nodeValue==1){			
			 $("#mBtn3").css('background','red');send_tr3("warmcmd6=1");
		}else{$("#mBtn3").css('background','green');}
		if(xmlDoc.getElementsByTagName("magnetic")[3].childNodes[0].nodeValue==1){			
			 $("#mBtn4").css('background','red');send_tr4("warmcmd8=1");
		}else{$("#mBtn4").css('background','green');}
		if(xmlDoc.getElementsByTagName("magnetic")[4].childNodes[0].nodeValue==1){			
			 $("#mBtn5").css('background','red');send_tr4("warmcmd8=1");
		}else{$("#mBtn5").css('background','green');}
		
		/*****异味设备数据变化时改变数据  *****/
		//alert(xmlDoc.getElementsByTagName("smell")[0].childNodes[0].nodeValue)
		$("#sBtn1").text(xmlDoc.getElementsByTagName("smell")[0].childNodes[0].nodeValue);
		$("#sBtn2").text(xmlDoc.getElementsByTagName("smell")[1].childNodes[0].nodeValue);
		$("#sBtn3").text(xmlDoc.getElementsByTagName("smell")[2].childNodes[0].nodeValue);
		$("#sBtn4").text(xmlDoc.getElementsByTagName("smell")[3].childNodes[0].nodeValue);
		$("#sBtn5").text(xmlDoc.getElementsByTagName("smell")[4].childNodes[0].nodeValue);
		$("#sBtn6").text(xmlDoc.getElementsByTagName("smell")[5].childNodes[0].nodeValue);
		
		/*****火焰设备数据变化时改变颜色  *****/ 
		if(xmlDoc.getElementsByTagName("fire")[0].childNodes[0].nodeValue==1){			
			 $("#fBtn1").css('background','red');send_tr1("warmcmd2=1"); 
		}else{$("#fBtn1").css('background','green');}
		if(xmlDoc.getElementsByTagName("fire")[1].childNodes[0].nodeValue==1){			
			 $("#fBtn2").css('background','red');send_tr1("warmcmd2=1"); 
		}else{$("#fBtn2").css('background','green');}
		if(xmlDoc.getElementsByTagName("fire")[2].childNodes[0].nodeValue==1){			
			 $("#fBtn3").css('background','red');send_tr2("warmcmd4=1"); 
		}else{$("#fBtn3").css('background','green');}
		if(xmlDoc.getElementsByTagName("fire")[3].childNodes[0].nodeValue==1){			
			 $("#fBtn4").css('background','red');send_tr2("warmcmd4=1"); 
		}else{$("#fBtn4").css('background','green');}
		if(xmlDoc.getElementsByTagName("fire")[4].childNodes[0].nodeValue==1){			
			 $("#fBtn5").css('background','red');send_tr4("warmcmd8=1"); 
		}else{$("#fBtn5").css('background','green');}
		if(xmlDoc.getElementsByTagName("fire")[5].childNodes[0].nodeValue==1){			
			 $("#fBtn6").css('background','red');send_tr4("warmcmd8=1"); 
		}else{$("#fBtn6").css('background','green');}
		/*****烟雾设备数据变化时改变数据  *****/ 
		$("#smgBtn1").text(xmlDoc.getElementsByTagName("smog")[0].childNodes[0].nodeValue);
		$("#smgBtn2").text(xmlDoc.getElementsByTagName("smog")[1].childNodes[0].nodeValue);
		$("#smgBtn3").text(xmlDoc.getElementsByTagName("smog")[2].childNodes[0].nodeValue);
		$("#smgBtn4").text(xmlDoc.getElementsByTagName("smog")[3].childNodes[0].nodeValue);
		$("#smgBtn5").text(xmlDoc.getElementsByTagName("smog")[4].childNodes[0].nodeValue);
		$("#smgBtn6").text(xmlDoc.getElementsByTagName("smog")[5].childNodes[0].nodeValue);
		/*****将烟雾值存入缓存  *****/
		 buffer_smog1= xmlDoc.getElementsByTagName("smog")[0].childNodes[0].nodeValue;
		 localStorage.setItem("smog1",buffer_smog1);
		 buffer_smog2= xmlDoc.getElementsByTagName("smog")[1].childNodes[0].nodeValue;
		 localStorage.setItem("smog2",buffer_smog2);
		 buffer_smog3= xmlDoc.getElementsByTagName("smog")[2].childNodes[0].nodeValue;
		 localStorage.setItem("smog3",buffer_smog3);
		 buffer_smog4= xmlDoc.getElementsByTagName("smog")[3].childNodes[0].nodeValue;
		 localStorage.setItem("smog4",buffer_smog4);
		 buffer_smog5= xmlDoc.getElementsByTagName("smog")[4].childNodes[0].nodeValue;
		 localStorage.setItem("smog5",buffer_smog5);
		 buffer_smog6= xmlDoc.getElementsByTagName("smog")[5].childNodes[0].nodeValue;
		 localStorage.setItem("smog6",buffer_smog6);
		/*****浸水设备数据变化时改变颜色  *****/ 
		if(xmlDoc.getElementsByTagName("founder")[0].childNodes[0].nodeValue==1){			
			 $("#qBtn1").css('background','red');send_tr1("warmcmd2=1"); 
		}else{$("#qBtn1").css('background','green');}
		if(xmlDoc.getElementsByTagName("founder")[1].childNodes[0].nodeValue==1){			
			 $("#qBtn2").css('background','red');send_tr1("warmcmd8=1"); 
		}else{$("#qBtn2").css('background','green');}
		
		/*****将温度值存入缓存 *****/ 
		 buffer= xmlDoc.getElementsByTagName("temperature")[0].childNodes[0].nodeValue;
		 localStorage.setItem("tem1",buffer);
		 buffer2= xmlDoc.getElementsByTagName("temperature")[1].childNodes[0].nodeValue;
		 localStorage.setItem("tem2",buffer2);
		 buffer3= xmlDoc.getElementsByTagName("temperature")[2].childNodes[0].nodeValue;
		 localStorage.setItem("tem3",buffer3);
		//request.setAttribute("temperature",rs2.getString("temperature"));	
		 
		
		/*****将湿度值存入缓存 *****/ 
		 buffer4= xmlDoc.getElementsByTagName("humidity")[0].childNodes[0].nodeValue;
		 localStorage.setItem("hum1",buffer4);
		 buffer5= xmlDoc.getElementsByTagName("humidity")[1].childNodes[0].nodeValue;
		 localStorage.setItem("hum2",buffer5);
		 buffer6= xmlDoc.getElementsByTagName("humidity")[2].childNodes[0].nodeValue;
		 localStorage.setItem("hum3",buffer6);
		}	
        //return t1;
	}
	var flag=0;var flag_2=0;var flag_3=0; var flag_4=0;  
   function setflag(f){
   		flag=f;		
   		return flag;
   }function setflag_2(f){
   		flag_2=f;		
   		return flag_2;
   }
   function setflag_3(f){
   		flag_3=f;		
   		return flag_3;
   }function setflag_4(f){
   		flag_4=f;		
   		return flag_4;
   }
   var f1=0;
   function send_tr1(cmd){
   		//alert("1")
   		if(flag==1){	//	当flag=1时，才能发送控制命令 
   		var xmlhttp;
		xmlhttp=new XMLHttpRequest();
		xmlhttp.open("POST","CmdServlet",true);

		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		//xmlhttp.send("fanclose=1");
		xmlhttp.send(cmd);
		//alert(cmd);
		f1++;
		if(f1==1){
		   flag=0;
		   //alert(flag);
		   f1=0;

   		};
   		}  	    
   }
    var f2=0;
    function send_tr2(cmd){
   		if(flag_2==1){	//	当flag=1时，才能发送控制命令 
   		var xmlhttp;
		xmlhttp=new XMLHttpRequest();
		xmlhttp.open("POST","CmdServlet",true);

		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		//xmlhttp.send("fanclose=1");
		xmlhttp.send(cmd);
		
		f2++;
		if(f2==1){
		   flag_2=0;
		  // alert(flag_2);
		   f2=0;

   		};
		//alert(cmd);
   		}  	    
   }
   var f3=0;
    function send_tr3(cmd){
   		if(flag_3==1){	//	当flag=1时，才能发送控制命令 
   		var xmlhttp;
		xmlhttp=new XMLHttpRequest();
		xmlhttp.open("POST","CmdServlet",true);

		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		//xmlhttp.send("fanclose=1");
		xmlhttp.send(cmd);
		f3++;
		//alert(f3);
		if(f3==5){
		   flag_3=0;
		   //alert(flag_3);
		   f3=0;

   		};
		//alert(cmd);
   		}  	    
   }
   var f4=0;
   function send_tr4(cmd){
   		if(flag_4==1){	//	当flag=1时，才能发送控制命令 
   		var xmlhttp;
		xmlhttp=new XMLHttpRequest();
		xmlhttp.open("POST","CmdServlet",true);

		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		//xmlhttp.send("fanclose=1");
		xmlhttp.send(cmd);
		f4++;
		if(f4==1){
		   flag_4=0;
		   //alert(flag_4);
		   f4=0;

   		};
		//alert(cmd);
   		}  	    
   }
   function StringBuffer(){
	   this.content=new Array;
   };
   StringBuffer.prototype.append=function(str){
	   this.content.push(str);
   };

  StringBuffer.prototype.toString = function(){ 
	   return this.content.join("");
   }