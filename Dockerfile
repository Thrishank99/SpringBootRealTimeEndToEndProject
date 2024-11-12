FROM openjdk:17
EXPOSE 8080
ADD target/springboot-docker-kubernates-pipeline-application.jar springboot-docker-kubernates-pipeline-application.jar
ENTRYPOINT ["java","-jar","/springboot-docker-kubernates-pipeline-application.jar"]