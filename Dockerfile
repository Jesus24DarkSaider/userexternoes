FROM openjdk:11
RUN mkdir /usr/
ADD /usr/userinternoes
COPY /target/userinternoes-1.0.0.jar /usr/src/userinternoes
WORKDIR /usr/userinternoes
EXPOSE 8199
CMD ["java", "-Djava.security.egd=file:/dev/.urandom", "-Duser.timezone=EC", "-jar", "userinternoes-1.0.0.jar"]





