FROM openjdk:17
EXPOSE 8080
ADD target/springboot-docker-kubernates-pipeline-app.jar springboot-docker-kubernates-pipeline-app.jar
ENTRYPOINT ["java","-jar","/springboot-docker-kubernates-pipeline-app.jar"]