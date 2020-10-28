FROM amazoncorretto:11.0.9-al2
LABEL maintainer="me@muyiafan.com"
ENV TIME_ZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone
RUN mkdir /opt/app
WORKDIR /opt/app
CMD ["java", "-jar", "/opt/app/jar.jar"]
