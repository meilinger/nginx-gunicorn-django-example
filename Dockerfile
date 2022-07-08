FROM nginx

RUN apt update
RUN apt install -y python3 pipenv

WORKDIR /code
COPY . /code
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN pipenv install
RUN export SHELL=/bin/bash

ENTRYPOINT ["./start.sh"]
