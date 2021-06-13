FROM codercom/code-server
RUN sudo apt update && \
    sudo apt install -y wget build-essential

RUN wget "https://dl.google.com/go/$(curl https://golang.org/VERSION?m=text).linux-amd64.tar.gz" && \
    sudo tar xvf go*.tar.gz -C /usr/local && \
    rm go*.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"
