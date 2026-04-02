FROM maven:3.9.12
LABEL authors="RForSwan"

WORKDIR /app

COPY pom.xml .

COPY . /app

RUN mvn package

CMD ["java","-jar", "target/ShoppingCartApp2-1.0-SNAPSHOT.jar"]