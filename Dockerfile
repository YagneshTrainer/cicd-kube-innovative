FROM tomcat:latest
LABEL "Project"="academy"
LABEL "Author"="Yagnesh"

WORKDIR /usr/local/tomcat/
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
VOLUME /usr/local/tomcat/webapps
