FROM python:3.7

# INSTALL OS MODULES

RUN apt update -y && \
    apt install telnet -y && \
    rm -rf /var/lib/apt/list/*

# COPY SOURCE CODE
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY Requirements.txt /data-copier

# INSTALL APPLICATION DEPENDENCIES
RUN pip install -r /data-copier/Requirements.txt