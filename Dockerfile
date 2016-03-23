FROM tomcat

#docker run --name=tomcat  -t -i --rm=true -p 3306:3306 -v ./tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml bd5bd16d3384 /bin/bash
#docker run --name=tomcat -p 80:8080 -v ./tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml bd5bd16d3384

#/usr/local/tomcat/conf/tomcat-users.xml

ADD ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

EXPOSE 8080

CMD ["catalina.sh", "run"]