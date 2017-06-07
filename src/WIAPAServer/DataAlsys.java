package WIAPAServer;

import dataToXML.DBtoXML;
import DB.DBUtil;
import DB.DBUtileAll;


public class DataAlsys {

	public void alsys(byte[] b){ 
		//DBUtil util=new DBUtil();   替换完成
		DBUtileAll DBall=new DBUtileAll();
		if(b[3]==0x21){
			System.out.println("有红外数据");
			String device="infrared";
			String s=""+b[5];		//将BYTE转为字符串
			switch(b[4]){
			case 1:								
				DBall.update(device,1, s);			//将更新的值保存到数据库
				System.out.println("红外设备1的值更改为："+s);
				break;
			case 2:				
				DBall.update(device,2, s);
				System.out.println("红外设备2的值更改为："+s);
				break;
			case 3:
				DBall.update(device,3, s);
				System.out.println("红外设备3的值更改为："+s);
				break;
			case 4:
				DBall.update(device,4, s);
				System.out.println("红外设备4的值更改为："+s);
				break;
			case 5:
				DBall.update(device,5, s);
				System.out.println("红外设备5的值更改为："+s);
				break;
				}
			}
		else if(b[3]==0x22){
			System.out.println("有门磁数据");
			String s=""+b[5];		//将BYTE转为字符串,第六位为数据位
			String device="magnetic";
			switch(b[4]){
			case 1:
				DBall.update(device,1, s);
				System.out.println("门磁设备1的值更改为"+s);
				break;
			case 2:
				DBall.update(device,2, s);
				System.out.println("门磁设备2的值更改为"+s);
				break;
			case 3:
				DBall.update(device,3, s);
				System.out.println("门磁设备3的值更改为"+s);
				break;
			case 4:
				DBall.update(device,4, s);
				System.out.println("门磁设备4的值更改为"+s);
				break;
			case 5:
				DBall.update(device,5, s);
				System.out.println("门磁设备5的值更改为"+s);
				break;
				}				
			}
		else if(b[3]==0x23){
			System.out.println("有玻璃数据");
			String s=""+b[5];		//将BYTE转为字符串,第六位为数据位
			String device="windowbreak";
			switch(b[4]){
			case 1:
				DBall.update(device,1, s);
				System.out.println("玻璃设备1的值更新为"+s);
				break;
			case 2:
				DBall.update(device,2, s);
				System.out.println("玻璃设备2的值更新为"+s);
				break;
			case 3:
				DBall.update(device,3, s);
				System.out.println("玻璃设备3的值更新为"+s);
				break;
			case 4:
				DBall.update(device,4, s);
				System.out.println("玻璃设备4的值更新为"+s);
				break;
				}
			}
		else if(b[3]==0x24){
			System.out.println("有异味数据");
			/*判断是异味之后先赋值 */
			String device="smell";
			String s=null;
			switch(b[5]){
			case 0:
				s="1";
				break;
			case 1:
				s="2";
				break;
			case 2:
				s="3";
				break;
			case 3:
				s="4";
				break;
			
			}
			
			switch(b[4]){
			case 1:
				DBall.update(device,1, s);
				System.out.println("异味设备1的值更新为"+s);
				break;
			case 2:
				DBall.update(device,2, s);
				System.out.println("异味设备2的值更新为"+s);
				break;
			case 3:
				DBall.update(device,3, s);
				System.out.println("异味设备3的值更新为"+s);
				break;
			case 4:
				DBall.update(device,4, s);
				System.out.println("异味设备4的值更新为"+s);
				break;
			case 5:
				
				DBall.update(device,5, s);
				System.out.println("异味设备5的值更新为"+s);
				break;
			case 6:
				DBall.update(device,6, s);
				System.out.println("异味设备6的值更新为"+s);
				break;
				}
			
			
		}
		else if(b[3]==0x26){
			System.out.println("有火焰数据");
			String s=""+b[5];		//将BYTE转为字符串,第六位为数据位
			String device="fire";
			switch(b[4]){
			case 1:
				DBall.update(device,1, s);
				System.err.println("火焰设备1的值更新为"+s);
				break;
			case 2:
				DBall.update(device,2, s);
				System.err.println("火焰设备2的值更新为"+s);
				//System.out.println("火焰设备2的值更新为"+s);
				break;
			case 3:
				DBall.update(device,3, s);
				System.err.println("火焰设备3的值更新为"+s);
				break;
			case 4:
				DBall.update(device,4, s);
				System.err.println("火焰设备4的值更新为"+s);
				break;
			case 5:				
				DBall.update(device,5, s);
				System.err.println("火焰设备5的值更新为"+s);
				break;
			case 6:				
				DBall.update(device,6, s);
				System.err.println("火焰设备6的值更新为"+s);
				break;
				
			}
		}
		else if(b[3]==0x27){
			System.out.println("有烟雾数据");
			int[] B= new int[7];
			for (int i = 0; i < B.length; i++) {
				B[i]=b[i];
				if(B[i]<0){				//对负数进行处理
					B[i]=B[i]+256;		//BYTE的范围是-127到128，对应两位的十六进制数，十位是8和8以后的都是负数
				}
			}
			int a=256*B[5]+B[6];			
			//double d=a*0.1292/2;
			/*int dw=(int) (d/10000);
			int dq=(int) (d%10000/1000);
			int db=(int) (d%10000%1000/100);
			int ds=(int) (d%10000%1000%100/10);
			int dg=(int) (d%10000%1000%100%10);
			String s =dw+""+dq+""+db+"."+ds+""+dg;
			double d=a*12.92;
			int dw=(int) (d/10000);
			int dq=(int) (d%10000/1000);
			int db=(int) (d%10000%1000/100);
			int ds=(int) (d%10000%1000%100/10);
			int dg=(int) (d%10000%1000%100%10);
			String s =dw+""+dq+"."+db+""+ds;*/
			
			String s=""+a*0.1292/2;
			
			System.err.println("烟雾:"+s);
			//String s=B[5]+"."+B[6];		//将BYTE转为字符串,第五位为整数位，第六位为小数位
			String device="smog";
			switch(b[4]){
			case 1:
				DBall.update(device,1, s);
				System.out.println("烟雾设备1的值更新为"+s);
				break;
			case 2:
				DBall.update(device,2, s);
				System.out.println("烟雾设备2的值更新为"+s);
				break;
			case 3:
				DBall.update(device,3, s);
				System.out.println("烟雾设备3的值更新为"+s);
				break;
			case 4:
				DBall.update(device,4, s);
				System.out.println("烟雾设备4的值更新为"+s);
				break;
			case 5:				
				DBall.update(device,5, s);
				System.out.println("烟雾设备5的值更新为"+s);
				break;
			case 6:				
				DBall.update(device,6, s);
				System.out.println("烟雾设备6的值更新为"+s);
				break;
				
			}
		}
		else if(b[3]==0x28){
			System.out.println("有浸水数据");
			String s=""+b[5];		//将BYTE转为字符串,第六位为数据位
			String device="founder";
			switch(b[4]){
			case 1:
				DBall.update(device,1, s);
				System.out.println("浸水设备1的值更新为"+s);
				break;
			case 2:
				DBall.update(device,2, s);
				System.out.println("浸水设备2的值更新为"+s);
				break;				
			}
		}
		else if(b[3]==0x29){
			System.out.println("有温湿度数据");		//还未做零下温度的处理
			//String tmp=""+(b[3]*16*16+b[4])*0.01;
			//System.out.println("b3位："+b[3]+"b4位："+b[4]+"b5位："+b[5]+"b6位："+b[6]);
			//String hum=""+(b[5]*16*16+b[6])*0.01;
			int[] B= new int[15];
			for (int i = 0; i < B.length; i++) {
				B[i]=b[i];
				if(B[i]<0){				//对负数进行处理
					B[i]=B[i]+256;		//BYTE的范围是-127到128，对应两位的十六进制数，十位是8和8以后的都是负数
				}
			}
			/************消除溢出，但原因不明。2015.5.24 22:32*******************/
			int tmpp=((B[5]*16*16)+B[6]);
			int humm=((B[7]*16*16)+B[8]);
			int tq=tmpp/1000;
			int tb=tmpp%1000/100;
			int ts=tmpp%1000%100/10;
			int tg=tmpp%1000%100%10;
			int hq=humm/1000;
			int hb=humm%1000/100;
			int hs=humm%1000%100/10;
			int hg=humm%1000%100%10;
			String tmp=""+tq+""+tb+"."+ts+""+tg;
			String hum=""+hq+""+hb+"."+hs+""+hg;
			//String tmp=""+tmpp;
			//String hum=""+humm;
			String device_t="temperature";
			String device_h="humidity";
			switch(b[4]){
			case 1:
				DBall.update(device_t,1, tmp);
				DBall.update(device_h,1, hum);
				System.out.println("温度设备1的值更新为"+tmp);
				System.out.println("湿度设备1的值更新为"+hum);
				break;
			case 2:
				DBall.update(device_t,2, tmp);
				DBall.update(device_h,2, hum);
				System.out.println("温度设备2的值更新为"+tmp);
				System.out.println("湿度设备2的值更新为"+hum);
				break;
			case 3:
				DBall.update(device_t,3, tmp);
				DBall.update(device_h,3, hum);
				System.out.println("温度设备3的值更新为"+tmp);
				System.out.println("湿度设备3的值更新为"+hum);
				break;
			}
		}
	}

}
