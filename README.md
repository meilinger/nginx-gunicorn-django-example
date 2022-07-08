# NGINX + Gunicorn + Django example

This is a very minimal example of getting a very simple nginx+gunicorn+django stack running.  This is definitely NOT THE BEST WAY to get a system setup for running gunicorn setup w/ django through nginx, but an example of a springboard to start from.

## Get running!

_Assumes that you have some docker as well as basic shell experience_

1. Build the docker image using `docker build . -t myapp`
2. Run it using `docker run -p 8000:80 myapp` to proxy port 80 on the docker container to your local machine's port 8000
3. Open a web browser pointed to `http://localhost:8000` and you should see the Django default "The install worked successfully!" page