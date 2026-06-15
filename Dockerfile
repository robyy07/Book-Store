# Use an official Tomcat image with the appropriate Java version

FROM tomcat:9.0-jdk17-corretto



# Remove the default Tomcat web apps to clean up space (Optional)

RUN rm -rf /usr/local/tomcat/webapps/*



# Copy your war file into the Tomcat webapps directory as ROOT.war

# Renaming it to ROOT.war ensures your app runs at the root context path (http://localhost:8080/)

COPY target/online-book-store-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war



# Expose Tomcat's default port

EXPOSE 8080



# Start Tomcat

CMD ["catalina.sh", "run"]
