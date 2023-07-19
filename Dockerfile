FROM codercom/code-server:latest 
ENV TZ=Asia/Tokyo

RUN sudo sed -i.bak -e 's%http://deb.debian.org/debian %http://ftp.riken.jp/Linux/debian/debian/ %g' /etc/apt/sources.list \
 && sudo apt update \
 && sudo apt upgrade -y \
 && sudo apt autoremove -y \
 && sudo apt install -y \
      nano vim git iputils-ping net-tools telnet php \
      zlib1g-dev build-essential libssl-dev libyaml-dev \
      libmagickwand-dev imagemagick wget dnsutils