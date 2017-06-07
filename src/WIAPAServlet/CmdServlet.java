package WIAPAServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import UDPServer.udpServer;

public class CmdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CmdServlet() {
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
		udpServer us=new udpServer();
		//String s=request.getParameter("openfan");
		//System.out.println("ss");
		 if(request.getParameter("warmcmd1")!=null){
			byte[] x= {0x68,(byte) 0x05,0x01,(byte) 0xcc,0x00,0x00,0x00,0x16};	//关声光报警1			
			us.SendUDP("192.168.202.166",61619,x);
			us.SendUDP("192.168.202.166",61619,x);
			System.out.println("关声光报警1");
		}else if(request.getParameter("warmcmd2")!=null){
			byte[] x= {0x68,(byte) 0x05,0x01,(byte) 0xcc,0x00,0x00,0x01,0x16};	//开声光报警1
			us.SendUDP("192.168.202.166",61619,x);			
			System.out.println("打开声光报警1");			
		}		 
		  else if(request.getParameter("warmcmd3")!=null){
			byte[] x= {0x68,(byte) 0x05,0x02,(byte) 0xcc,0x00,0x00,0x00,0x23};	//关声光报警2
			us.SendUDP("192.168.202.167",61619,x);
			;
			System.out.println("关声光报警2");
			
		}else if(request.getParameter("warmcmd4")!=null){
			byte[] x= {0x68,(byte) 0x05,0x02,(byte) 0xcc,0x00,0x00,0x01,0x23};	//开声光报警2
			us.SendUDP("192.168.202.167",61619,x);			
			
			System.out.println("打开声光报警2");			
		}
		  
		  else if(request.getParameter("warmcmd5")!=null){
			byte[] x= {0x68,(byte) 0x05,0x03,0x00,0x00,0x00,0x00,0x16};	//关声光报警3
			us.SendUDP("192.168.202.168",61619,x);
			us.SendUDP("192.168.202.168",61619,x);
			System.out.println("关声光报警3");
		}else if(request.getParameter("warmcmd6")!=null){
			byte[] x= {0x68,(byte) 0x05,0x03,0x00,0x00,0x00,0x01,0x16};	//开声光报警3
			us.SendUDP("192.168.202.168",61619,x);
			
			System.out.println("打开声光报警3");			
		}
		  
		  else if(request.getParameter("warmcmd7")!=null){
			byte[] x= {0x68,(byte) 0x05,0x04,(byte) 0xcc,0x00,0x00,0x00,0x16};	//关声光报警4
			us.SendUDP("192.168.202.169",61619,x);
			us.SendUDP("192.168.202.169",61619,x);
			System.out.println("关声光报警4");
		}else if(request.getParameter("warmcmd8")!=null){
			byte[] x= {0x68,(byte) 0x05,0x04,(byte) 0xcc,0x00,0x00,0x01,0x16};	//开声光报警4
			     
			us.SendUDP("192.168.202.169",61619,x);
			System.out.println("打开声光报警4");			
		}
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

		CmdServlet h=new CmdServlet();
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
