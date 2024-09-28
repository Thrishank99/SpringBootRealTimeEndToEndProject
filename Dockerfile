FROM openjdk:17
EXPOSE 8080
ADD target/springboot-realtime-endtoend-project.war springboot-realtime-endtoend-project.war
ENTRYPOINT ["java","-war","/springboot-realtime-endtoend-project.war"]