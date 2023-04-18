FROM openjdk:16-jdk-buster
ADD apache-tomcat-10.1.7.tar.gz /opt
RUN mv /opt/apache-tomcat-10.1.7 /opt/tomcat
RUN chmod 777 -R /opt/tomcat
EXPOSE 8080
CMD [ "/opt/tomcat/bin/catalina.sh", "run" ]
