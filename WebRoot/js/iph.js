		var buf1=new StringBuffer();	
   		buf1.append(localStorage.getItem("tem1"));
		var buf2=new StringBuffer();	
   		buf2.append(localStorage.getItem("tem2"));
   		var buf3=new StringBuffer();	
   		buf3.append(localStorage.getItem("tem3"));
		var buf4=new StringBuffer();	
		
   		buf4.append(localStorage.getItem("hum1"));
   		var buf5=new StringBuffer();	
   		buf5.append(localStorage.getItem("hum2"));
   		var buf6=new StringBuffer();	
   		buf6.append(localStorage.getItem("hum3"));
   		
   		var buf7=new StringBuffer();	
   		buf7.append(localStorage.getItem("smog1"));
   		var buf8=new StringBuffer();	
   		buf8.append(localStorage.getItem("smog2"));
   		var buf9=new StringBuffer();	
   		buf9.append(localStorage.getItem("smog3"));
   		var buf10=new StringBuffer();	
   		buf10.append(localStorage.getItem("smog4"));
   		var buf11=new StringBuffer();	
   		buf11.append(localStorage.getItem("smog5"));
   		var buf12=new StringBuffer();	
   		buf12.append(localStorage.getItem("smog6"));
   		
 		var s1 =parseFloat(buf1);
   		var s2 =parseFloat(buf2);
   		var s3 =parseFloat(buf3);
   		var s4 =parseFloat(buf4);
   		var s5 =parseFloat(buf5);
   		var s6 =parseFloat(buf6);
   		var s7 =parseFloat(buf7);
   		var s8 =parseFloat(buf8);
   		var s9 =parseFloat(buf9);
   		var s10=parseFloat(buf10);
   		var s11=parseFloat(buf11);
   		var s12=parseFloat(buf12);
   		
 //绘制点线图*********************************************************
        Highcharts.setOptions({
            global: {
                useUTC: false//确认时区
            }
        });
        
        
/********************温度表 *************************************************************/
        $('#temperature').highcharts({
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
 							
 							var buf_tem2=new StringBuffer();	
   							buf_tem2.append(localStorage.getItem("tem2"));
 							var tem2 =parseFloat(buf_tem2);
 							
 							var buf_tem3=new StringBuffer();	
   							buf_tem3.append(localStorage.getItem("tem3"));
 							var tem3 =parseFloat(buf_tem3);
 							
 							
 							
 							
                            var x = (new Date()).getTime(); // current time
                            var y0 =tem1;
                            var y1 =tem2;
                            var y2 =tem3;


                            series0.addPoint([x, y0], true, true);
                            series1.addPoint([x, y1], true, true);
                            series2.addPoint([x, y2], true, true);

                           // series2.addPoint([x, y2], true, true);
                           // series3.addPoint([x, y3], true, true);
                           
                        }, 3000);
                    }
                }
            },
            title: {
                text: '实时温度值 ',
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
            series: [{
                name: '中控室温度1',
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
            },{
                name: '高压开关室温度1',
                color:'yellow',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s2
                           
                        });
                    }
                    return data;
                })()
            },{
                name: '高压开关室温度2',
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
/********************湿度表 *************************************************************/
         $('#humidity').highcharts({
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
   							buf_tem1.append(localStorage.getItem("hum1"));
 							var tem1 =parseFloat(buf_tem1);
 							
 							var buf_tem2=new StringBuffer();	
   							buf_tem2.append(localStorage.getItem("hum2"));
 							var tem2 =parseFloat(buf_tem2);
 							
 							var buf_tem3=new StringBuffer();	
   							buf_tem3.append(localStorage.getItem("hum3"));
 							var tem3 =parseFloat(buf_tem3);
 							
 							
 							
 							
                            var x = (new Date()).getTime(); // current time
                            var y0 =tem1;
                            var y1 =tem2;
                            var y2 =tem3;


                            series0.addPoint([x, y0], true, true);
                            series1.addPoint([x, y1], true, true);
                            series2.addPoint([x, y2], true, true);

                           // series2.addPoint([x, y2], true, true);
                           // series3.addPoint([x, y3], true, true);
                           
                        }, 3000);
                    }
                }
            },
            title: {
                text: '实时湿度值 ',
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
                valueSuffix: '%rh'
                },
            series: [{
                name: '中控室湿度1',
                color:'red',
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
            },{
                name: '高压开关室湿度1',
                color:'yellow',
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
            },{
                name: '高压开关室湿度2',
                color:'blue',
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
         
         
         
/******************                              ****************************************/         
/********************烟雾表 *************************************************************/
         $('#smog').highcharts({
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
                        var series4 = this.series[4];
                        var series5 = this.series[5];
                        
                        setInterval(function() {
                        	var buf_tem1=new StringBuffer();	
   							buf_tem1.append(localStorage.getItem("smog1"));
 							var tem1 =parseFloat(buf_tem1);
 							
 							var buf_tem2=new StringBuffer();	
   							buf_tem2.append(localStorage.getItem("smog2"));
 							var tem2 =parseFloat(buf_tem2);
 							
 							var buf_tem3=new StringBuffer();	
   							buf_tem3.append(localStorage.getItem("smog3"));
 							var tem3 =parseFloat(buf_tem3);
 							
 							var buf_tem4=new StringBuffer();	
   							buf_tem4.append(localStorage.getItem("smog4"));
 							var tem4 =parseFloat(buf_tem4);
 							
 							var buf_tem5=new StringBuffer();	
   							buf_tem5.append(localStorage.getItem("smog5"));
 							var tem5 =parseFloat(buf_tem5);
 							
 							var buf_tem6=new StringBuffer();	
   							buf_tem6.append(localStorage.getItem("smog6"));
 							var tem6 =parseFloat(buf_tem6);
 							
 							
 							
 							
                            var x = (new Date()).getTime(); // current time
                            var y0 =tem1;
                            var y1 =tem2;
                            var y2 =tem3;
                            var y3 =tem4;
                            var y4 =tem5;
                            var y5 =tem6;


                           // series0.addPoint([x, y0], true, true);
                            series0.addPoint([x, y1], true, true);
                            series1.addPoint([x, y2], true, true);
                            series2.addPoint([x, y3], true, true);
                            series3.addPoint([x, y4], true, true);
                            series4.addPoint([x, y5], true, true);

                           // series2.addPoint([x, y2], true, true);
                           // series3.addPoint([x, y3], true, true);
                           
                        }, 3000);
                    }
                }
            },
            title: {
                text: '实时烟雾值 ',
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
                    text: 'Smog(ppm)',
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
                valueSuffix: 'ppm'
                },
            series: [ /*{
                name: '中控室烟雾1',
                color:'red',
                data: (function() {
                     generate an array of random data                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s7
                           
                        });
                    }
                    return data;
                })()
            },*/{
                name: '中控室烟雾2',
                color:'red',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s8
                           
                        });
                    }
                    return data;
                })()
            },{
                name: '厂房烟雾1',
                color:'blue',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s9
                           
                        });
                    }
                    return data;
                })()
            },{
                name: '厂房烟雾2',
                color:'blue',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s10
                           
                        });
                    }
                    return data;
                })()
            },{
                name: '高压开关室烟雾1',
                color:'yellow',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s11
                           
                        });
                    }
                    return data;
                })()
            },{
                name: '高压开关室烟雾2',
                color:'yellow',
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -3; i <= 0; i++) {
                        data.push({
                            x: time + i * 3000,
                            y: s12
                           
                        });
                    }
                    return data;
                })()
            }]
        });