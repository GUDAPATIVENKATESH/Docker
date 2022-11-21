#MultiStage_image_Build
FROM maven:3.8.6-openjdk-11 as Build
RUN git clone https://github.com/GUDAPATIVENKATESH/spring-petclinic.git && \
    cd spring-petclinic/ && \
    mvn package
#jar location /spring-petclinic/target/spring-petclinic-2.7.3.jar
FROM openjdk:11
LABEL project = "SpringPetClinic"
LABEL author = "VENKATESH"
EXPOSE 8080
COPY --from=Build /spring-petclinic/target/spring-petclinic-2.7.3.jar spring-petclinic-2.7.3.jar
CMD ["java", "-jar", "spring-petclinic-2.7.3.jar"]