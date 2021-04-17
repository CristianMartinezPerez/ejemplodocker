FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY build/DevOpsUsach2020-0.0.1.jar ejemplomaven.jar
EXPOSE 8081
ENTRYPOINT exec java $JAVA_OPTS -jar ejemplomaven.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ejemplomaven.jar
