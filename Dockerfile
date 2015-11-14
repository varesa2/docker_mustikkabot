FROM registry.esav.fi:5000/python3
MAINTAINER Esa Varemo <esa@kuivanto.fi>

ENV APP=mustikkabot
ENV APP_GIT=https://github.com/varesa/mustikkaBot.git

ENV USER=$APP
ENV DIR=/$APP

RUN mkdir $DIR && chown $USER:$USER $DIR

USER $USER
WORKDIR $DIR

RUN git clone $APP_GIT $DIR

CMD ['bash', 'start.sh']