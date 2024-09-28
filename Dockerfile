FROM openjdk:17
EXPOSE 8080
ADD target/springboot-realtime-endtoend-project.jar springboot-realtime-endtoend-project.jar
ENTRYPOINT ["java","-war","/springboot-realtime-endtoend-project.jar"]