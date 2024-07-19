FROM  bellsoft/liberica-openjdk-alpine:17.0.8

RUN apk add curl
RUN apk add jq



WORKDIR home/selenium-dockerize

ADD target/docker-resources ./
ADD ./docker-compose.yaml ./
ADD ./runner.sh ./

RUN dos2unix runner.sh

ENTRYPOINT sh runner.sh

#ENTRYPOINT docker-compose up && java -Dselenium.grid.enabled=true -cp 'libs/*' org.testng.TestNG test-suites/vendor-portal.xml


