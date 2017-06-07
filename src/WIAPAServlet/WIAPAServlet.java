package WIAPAServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataToXML.DBtoXML;

import DB.DBUtil;
import DB.DBUtileAll;


public class WIAPAServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public WIAPAServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Cache-Control","no-cache");
		PrintWriter out = response.getWriter();
		//DBUtil util=new DBUtil();
		DBtoXML DBtoXML=new DBtoXML();
		/* 采用集合的方式获取数据*/
		DBUtileAll DBall=new DBUtileAll();
		ArrayList<String[]> list = new ArrayList<String[]>();
		list=DBall.qurey();			//从后台获取数据
		String[] temperature=list.get(0);			//得到温度数据
		String[] humidity=list.get(1);			    //得到湿度数据
		String[] smell=list.get(2);			        //得到空气质量数据
		String[] smog=list.get(3);			    	//得到烟雾数据
		String[] infrared=list.get(4);			    //得到红外数据
		String[] megnetic=list.get(5);			    //得到门磁数据
		String[] windowbreak=list.get(6);			//得到玻璃破碎数据
		String[] fire=list.get(7);			    	//得到火焰数据
		String[] founder=list.get(8);			    //得到浸水数据
		
		/* 获取红外数据*/
		String infrared1=infrared[0];
		String infrared2=infrared[1];
		String infrared3=infrared[2];
		String infrared4=infrared[3];
		String infrared5=infrared[4];
		/* 获取窗磁门磁数据*/
		String magnetic1=megnetic[0];
		String magnetic2=megnetic[1];
		String magnetic3=megnetic[2];
		String magnetic4=megnetic[3];
		String magnetic5=megnetic[4];
		/* 获取玻璃破碎数据*/
		String windowsBreak1=windowbreak[0];
		String windowsBreak2=windowbreak[1];
		String windowsBreak3=windowbreak[2];
		String windowsBreak4=windowbreak[3];
		/* 获取异味数据*/
		String smell1=DBtoXML.ChargeSmell(smell[0]);
		String smell2=DBtoXML.ChargeSmell(smell[1]);
		String smell3=DBtoXML.ChargeSmell(smell[2]);
		String smell4=DBtoXML.ChargeSmell(smell[3]);
		String smell5=DBtoXML.ChargeSmell(smell[4]);
		String smell6=DBtoXML.ChargeSmell(smell[5]);
		/* 获取火焰数据*/
		String fire1=fire[0];
		String fire2=fire[1];
		String fire3=fire[2];
		String fire4=fire[3];
		String fire5=fire[4];
		String fire6=fire[5];
		/* 获取烟雾数据*/
		String smog1=smog[0];
		String smog2=smog[1];
		String smog3=smog[2];
		String smog4=smog[3];
		String smog5=smog[4];
		String smog6=smog[5];
		/* 获取浸水数据*/
		String founder1=founder[0];
		String founder2=founder[1];
		/* 获取温度数据*/
		String temperature1=temperature[0];
		String temperature2=temperature[1];
		String temperature3=temperature[2];
		/* 获取湿度数据*/
		String humidity1=humidity[0];
		String humidity2=humidity[1];
		String humidity3=humidity[2];
		
		
		StringBuffer sb = new StringBuffer(
				 "<?xml version=\"1.0\" encoding=\"utf-8\"?>"); 
		
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
		
		sb.append("<fire>"+fire1+"</fire>"); 
		sb.append("<fire>"+fire2+"</fire>");
		sb.append("<fire>"+fire3+"</fire>");
		sb.append("<fire>"+fire4+"</fire>");
		sb.append("<fire>"+fire5+"</fire>");
		sb.append("<fire>"+fire6+"</fire>");
		
		sb.append("<smog>"+smog1+"</smog>");
		sb.append("<smog>"+smog2+"</smog>");
		sb.append("<smog>"+smog3+"</smog>");
		sb.append("<smog>"+smog4+"</smog>");
		sb.append("<smog>"+smog5+"</smog>");
		sb.append("<smog>"+smog6+"</smog>");
		
		sb.append("<founder>"+founder1+"</founder>");
		sb.append("<founder>"+founder2+"</founder>");
		
		sb.append("<temperature>"+temperature1+"</temperature>");
		sb.append("<temperature>"+temperature2+"</temperature>");
		sb.append("<temperature>"+temperature3+"</temperature>");
		
		sb.append("<humidity>"+humidity1+"</humidity>");
		sb.append("<humidity>"+humidity2+"</humidity>");
		sb.append("<humidity>"+humidity3+"</humidity>");
		sb.append("</type>");     
		out.write(sb.toString());  //注意这里向jsp输出的流，在script中的截获方法
		
		out.flush();
		out.close();
		sb.delete(0, sb.length());
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		WIAPAServlet h=new WIAPAServlet();
		h.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
