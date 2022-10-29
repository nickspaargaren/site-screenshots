FROM alpine:3.16

RUN apk upgrade --no-cache --available && apk add --no-cache chromium

WORKDIR /usr/src/app

COPY ./createScreenshots.sh /usr/src/app/
COPY ./data /usr/src/app/data

RUN mkdir screenshots

ENTRYPOINT ["sh", "createScreenshots.sh"]