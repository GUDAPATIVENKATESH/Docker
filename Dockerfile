FROM ubuntu:22.04
LABEL author='VENKATESH'
LABEL project='JOIP-2022-12-02'
EXPOSE 80
RUN apt update && apt install apache2 -y
CMD ["apache2ctl", "-D", "FOREGROUND"]