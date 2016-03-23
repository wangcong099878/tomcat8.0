FROM registry.aliyuncs.com/dc/tomcat7

#docker run --name=tomcat  -t -i --rm=true -p 80:8080 -p 8009:8009 $(docker images | grep tomcat | awk 'NR<2{print $3}') /bin/bash
#docker run --name=tomcat -p 80:8080 -p 8009:8009 -v ./tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml $(docker images | grep tomcat | awk 'NR<2{print $3}')
#docker run --name=tomcat -d -p 8080:8080 -p 8009:8009 $(docker images | grep tomcat | awk 'NR<2{print $3}')


ADD ./tomcat-users.xml /usr/tomcat7/conf/tomcat-users.xml

EXPOSE 8080
EXPOSE 8009

CMD ["catalina.sh", "run"]