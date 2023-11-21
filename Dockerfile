FROM ubuntu
WORKDIR /tmp/dsc
COPY ./dsc/devspaces-3.9.1-dsc-linux-x64.tar.gz .
RUN tar -xvf ./devspaces-3.9.1-dsc-linux-x64.tar.gz && mv ./dsc /dsc
ENV PATH="${PATH}:/dsc/bin"
WORKDIR /
ENTRYPOINT ["tail", "-f", "/dev/null"]

