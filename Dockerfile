FROM debian:buster-slim
#download all necessary packages
RUN apt update && apt install -y nginx wget php curl letsencrypt php-cli php-fpm php-cgi php-mysql php-mbstring
RUN apt install -y mariadb-server
COPY ./srcs/ /root/
ENTRYPOINT bash /root/install.sh
EXPOSE 8080 80 443 3306 33060