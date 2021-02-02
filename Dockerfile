FROM azul/zulu-openjdk-alpine:11.0.10-11.45.27
LABEL maintainer="me@muyiafan.com"
ENV TIME_ZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone
RUN mkdir /opt/app
WORKDIR /opt/app
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/java ${JAVA_OPTS} -jar ${JAR_PATH}"]
