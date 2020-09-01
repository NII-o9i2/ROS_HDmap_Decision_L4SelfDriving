  //udp的封装接口
 #include <string>
 // #include <iostream>
 #include <stdio.h>
 #include <unistd.h>
 #include <sys/socket.h>
 #include <errno.h>
 #include <stdlib.h>
 #include <netinet/in.h>
 #include <arpa/inet.h>
 
class UdpSocket
{
	private:
		int  _socket;
		int ret;

	public:
		UdpSocket():_socket(-1){ };
		~UdpSocket(){ };

		//创建socket
		bool Socket()
		{
			_socket = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP);
			if(_socket < 0){}
			return true;
		}
		
		//绑定连接
		bool Bind(std::string ip,uint16_t port)
		{
			struct sockaddr_in addr;
			addr.sin_family = AF_INET;
			addr.sin_port = htons(port);
			addr.sin_addr.s_addr = inet_addr(ip.c_str());

			int len = sizeof(addr);

			ret = bind(_socket,(struct sockaddr*)&addr,len);
			if(ret < 0)
			{
				perror("bind error\n");
				return false;
			}
			return true;
		}

		//接收数据
		bool Recv(std::string &buf, struct sockaddr_in *saddr)
		{
	    //*daddr是发送的ip信息
	    //  ssize_t recvfrom(int sockfd, void *buf, size_t len, int flags, struct sockaddr *src_addr, socklen_t *addrlen);
    	char temp[1500];
			socklen_t len = sizeof(struct sockaddr_in);
			ret = recvfrom(_socket, temp, 1500, 0, (struct sockaddr*)saddr, &len);
			if(ret < 0)
			{
				perror("recvfrom error\n");
				return false;
			}
			buf.assign(temp,ret);
			return true;
		}

		//发送数据
		bool Send(std::string& str,struct sockaddr_in* daddr)
		{
			//  ssize_t sendto(int sockfd, const void *buf, size_t len, int flags,
			//  const struct sockaddr *dest_addr, socklen_t addrlen);
			int len = sizeof(struct sockaddr_in);
			int ret = sendto(_socket,str.c_str(),str.size(),0 ,(struct sockaddr*)daddr, len);
			if(ret < 0)
			{
				perror("sendto error\n");
				return false;
			}
			return true;
		}

		//关闭连接
		bool Close()
		{
			close(_socket);
			_socket = -1;
		}

}; 