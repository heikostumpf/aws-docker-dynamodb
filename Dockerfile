FROM openjdk:7

MAINTAINER Heiko Stumpf <github.com/heikostumpf>

RUN mkdir /opt/dynamodb

WORKDIR /opt/dynamodb

RUN wget -qO - https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz | tar -xz 

EXPOSE 8000

CMD ["java", "-jar", "-Djava.library.path=./DynamoDBLocal_lib", "DynamoDBLocal.jar"]