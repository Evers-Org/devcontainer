FROM node:19-alpine3.17

RUN apk update

# Install fish shell and set as default
RUN apk add fish
RUN sed -i 's/\/bin\/ash/\/usr\/bin\/fish/' /etc/passwd

# Install git and ssh (ssh necessary for git)
RUN apk add git openssh-client

EXPOSE 8080