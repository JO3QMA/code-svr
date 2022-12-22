FROM codercom/code-server:latest 
ENV TZ=Asia/Tokyo

RUN sudo apt update \
 && sudo apt upgrade -y \
 && sudo apt autoremove -y \
 && sudo apt install -y \
      nano vim git iputils-ping net-tools telnet