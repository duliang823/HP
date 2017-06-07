 package WIAPAServer;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;


public class WIAPAudpServer {
	public static void main(String[] args) {
		try {
			DatagramSocket ds=new DatagramSocket(8899);//创建一个Socket 接收数据端口号为变量id
			byte[] buf={0x68,0x00,0x00,0x00,0x00,0x00,0x00,0x16};//将字符串变为字节数组，并保存在buf中
			DatagramPacket dp=new DatagramPacket(buf,0,buf.length,
					new InetSocketAddress("192.168.202.230",6530));	//	创建一个数据报包，包的内容为buf，将数据传给网关的IP和PORT
			ds.send(dp);	//发送数据报包
			System.out.println("发送完成");
			ds.close();		//关闭Socket
			Thread.sleep(50);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Thread s1 = new Thread(new Reseive());
		s1.start();

	}

}
class Reseive extends Thread{
	public void run(){
		while(true){
			try {
				DatagramSocket ds=new DatagramSocket(8866);
				byte[] recvBuf=new byte[15];
				DatagramPacket d=new DatagramPacket(recvBuf,recvBuf.length); 
				ds.receive(d);
				ds.close();
				byte[] buf=d.getData();
				
				System.out.println(d.getSocketAddress());
				System.out.println(buf[0]+"+"+buf[3]+"+"+buf[4]+"+"+buf[5]+"+"+buf[6]+"+"+buf[7]+"+"+buf[8]+"+"+buf[14]);
				DataAlsys da=new DataAlsys();
				da.alsys(buf);
				Thread.sleep(50);
				}
			
				//byte[] buf3=d.getData();
				//String  str1=new String(buf3,0,4);		//获取指定位置的数据
				//s=new String(buf3).trim();					//0为要解码的第一个 byte 的索引，4为要解码的 byte 数
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
		}
	}	
}
