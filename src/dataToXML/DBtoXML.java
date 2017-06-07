package dataToXML;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

import DB.DBUtil;

public class DBtoXML {
	public static void main(String[] args) {
		int i=0;
		System.out.println("正在进行DB-TO-XML");
		DBtoXML dtx=new DBtoXML();
		while(true){
			//System.out.println("1");
			DBUtil util=new DBUtil();
			/* 获取红外数据*/
			String infrared1=util.query("infrared", "infrared1");
			String infrared2=util.query("infrared", "infrared2");
			String infrared3=util.query("infrared", "infrared3");
			String infrared4=util.query("infrared", "infrared4");
			String infrared5=util.query("infrared", "infrared5");
			/* 获取窗磁门磁数据*/
			String magnetic1=util.query("magnetic", "magnetic1");
			String magnetic2=util.query("magnetic", "magnetic2");
			String magnetic3=util.query("magnetic", "magnetic3");
			String magnetic4=util.query("magnetic", "magnetic4");
			String magnetic5=util.query("magnetic", "magnetic5");
			/* 获取玻璃破碎数据*/
			String windowsBreak1=util.query("windowbreak", "windowbreak1");
			String windowsBreak2=util.query("windowbreak", "windowbreak2");
			String windowsBreak3=util.query("windowbreak", "windowbreak3");
			String windowsBreak4=util.query("windowbreak", "windowbreak4");
			/* 获取异味数据*/
			String smell1=dtx.ChargeSmell(util.query("smell", "smell1"));
			//System.out.println(smell1);
			String smell2=dtx.ChargeSmell(util.query("smell", "smell2"));
			//System.out.println(smell2);
			String smell3=dtx.ChargeSmell(util.query("smell", "smell3"));
			String smell4=dtx.ChargeSmell(util.query("smell", "smell4"));
			String smell5=dtx.ChargeSmell(util.query("smell", "smell5"));
			String smell6=dtx.ChargeSmell(util.query("smell", "smell6"));
//			String smell1=util.query("smell", "smell1");
//			String smell2=util.query("smell", "smell2");
//			String smell3=util.query("smell", "smell3");
//			String smell4=util.query("smell", "smell4");
//			String smell5=util.query("smell", "smell5");
//			String smell6=util.query("smell", "smell6");
			StringBuffer sb = new StringBuffer();
			
			sb.append("<type>");
			sb.append("<infrared>"+infrared1+"</infrared>");
			sb.append("<infrared>"+infrared2+"</infrared>");
			sb.append("<infrared>"+infrared3+"</infrared>");
			sb.append("<infrared>"+infrared4+"</infrared>");
			sb.append("<infrared>"+infrared5+"</infrared>");
			
			sb.append("<magnetic>"+magnetic1+"</magnetic>");
			sb.append("<magnetic>"+magnetic2+"</magnetic>");
			sb.append("<magnetic>"+magnetic3+"</magnetic>");
			sb.append("<magnetic>"+magnetic4+"</magnetic>");
			sb.append("<magnetic>"+magnetic5+"</magnetic>");
			
			sb.append("<windowsBreak>"+windowsBreak1+"</windowsBreak>");
			sb.append("<windowsBreak>"+windowsBreak2+"</windowsBreak>");
			sb.append("<windowsBreak>"+windowsBreak3+"</windowsBreak>");
			sb.append("<windowsBreak>"+windowsBreak4+"</windowsBreak>");
			
			sb.append("<smell>"+smell1+"</smell>");
			sb.append("<smell>"+smell2+"</smell>");
			sb.append("<smell>"+smell3+"</smell>");
			sb.append("<smell>"+smell4+"</smell>");
			sb.append("<smell>"+smell5+"</smell>");
			sb.append("<smell>"+smell6+"</smell>");
			sb.append("</type>");     

			
			 File fp=new File("D://MyEclipse/Workspaces/MyEclipse 9/WIA-PA5.3/WebRoot/DataXML/data.xml");			//保存为xml
		     PrintWriter pfp;
		     
			try {
				 pfp = new PrintWriter(fp,"utf-8");		  //关键是这句：要用 带指定编码格式的 构造方法
			     pfp.print(sb);
			     pfp.close();
			     sb.delete(0, sb.length());			//清理缓存
			     //System.out.println("2");
			     try {
			            Thread.sleep(500);		//延迟3S
			        } catch (InterruptedException e) {
			            // TODO Auto-generated catch block
			            e.printStackTrace();
			        }
			    // System.out.println(i++);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		     //System.err.println("已存入");
		}
	}
	 public  String ChargeSmell(String smell){
		if(smell.equals("1")){
			smell="好";
			//System.out.println("我在这里："+smell);
		}else if(smell.equals("2")){
			smell="较好";
		}else if(smell.equals("3")){
			smell="一般";
		}else if(smell.equals("4")){
			smell="差";
		}
		
		return smell;
	}

}
