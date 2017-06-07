package UDPServer;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.net.SocketException;

public class udpServer {
	//static dataModel dm=new dataModel();
	public static void main(String[] args) {
		
	}
	
	public byte[] RecwUDP() {
		return null;/*
		byte[] rs=null;
		try {
			DatagramSocket ds=new DatagramSocket(8899);
			byte[] b=new byte[3];;
			
			
			DatagramPacket d=new DatagramPacket(b,b.length); 
			ds.receive(d);
			//anls as=new anls();
			//dm.setAriH(as.Anls(b));
			//dm.setAriH("23.5");
			//dm.setAriT("24.5");
			anls as=new anls();
			//dm.setAriH(as.Anls(b));
			//dm.setAriT(as.Anls(b));
			//dm.setEarthH(as.Anls(b));
			//dm.setEarthT(as.Anls(b));
			//dm.setCo2(as.Anls(b));
			//dm.setLight(as.Anls(b));
			//System.out.println(b[0]);			//b[0]为接收到的十进制
			//rs=new String(b,0,b.length);		//将字节数组转为字符串
			//rs=""+b[1]+"."+b[2];
			rs=b;
			ds.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;*/
	}
	
	public void SendUDP(String ip,int port,byte[] x) {
		//ip="127.0.0.1";
		//port=8899;
		byte[] buf=x;
		DatagramSocket ds;
		try {
			ds = new DatagramSocket(8855);
			DatagramPacket dp=new DatagramPacket(buf,0,buf.length,
					new InetSocketAddress(ip,port));	//	创建一个数据报包，包的内容为buf，将数据传给网关的IP和PORT
			ds.send(dp);	//发送数据报包			
			ds.close();		//关闭Socket
			Thread.sleep(1000);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		
	}
}
