FROM openjdk
COPY src InstituteDB
WORKDIR InstituteDB
RUN mkdir -p bin
RUN javac -d bin ./UserPackage/LoginServlet.java
WORKDIR bin
CMD ["java", "UserPackage.LoginServlet"]