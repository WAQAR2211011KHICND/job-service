FROM corretto:17
LABEL developer="dockerJobService"
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app.jar
# ADD ./createJob-0.0.1-SNAPSHOT.jar create-job-springboot-docker.jar
ENTRYPOINT ["java","-jar","/app.jar"]