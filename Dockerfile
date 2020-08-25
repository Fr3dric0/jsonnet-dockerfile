FROM python:3.8-buster

WORKDIR /home

RUN git clone https://github.com/google/jsonnet.git
RUN cd jsonnet \
    && make \
    && mv jsonnet /usr/local/bin/jsonnet \
    && mv jsonnetfmt /usr/local/bin/jsonnetfmt \
    && cd ../ \
    && rm -rf jsonnet
