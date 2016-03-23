FROM tomcat

#docker run --name=tomcat  -t -i --rm=true -p 80:8080 -p 8009:8009 -v ./tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml bd5bd16d3384 /bin/bash
#docker run --name=tomcat -p 80:8080 -p 8009:8009 -v ./tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml 035b62843a80
#docker run --name=tomcat -d -p 80:8080 -p 8009:8009 035b62843a80


ADD ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

EXPOSE 8080
EXPOSE 8009

CMD ["catalina.sh", "run"]