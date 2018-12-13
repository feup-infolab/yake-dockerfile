FROM library/python:3.7.1-alpine

# change to temp dir
WORKDIR /temp

# install git
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# clone yake from github
RUN git clone https://github.com/LIAAD/yake.git

# change to cloned yake dir
WORKDIR /temp/yake

# install build dependencies
RUN apk add build-base

# install yake via pip
RUN pip install git+https://github.com/LIAAD/yake

# set default command
ENTRYPOINT ["yake"]
