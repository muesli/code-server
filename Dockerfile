FROM codercom/code-server

# base packages
RUN sudo apt update && \
    sudo apt install -y wget build-essential

# install latest Go
RUN wget -q -c "https://dl.google.com/go/$(curl -f -L --no-progress-meter https://go.dev/VERSION?m=text).linux-amd64.tar.gz" -O - | sudo tar xvz -C /usr/local

ENV PATH="/usr/local/go/bin:${PATH}"

# install code-server extensions
#RUN code-server --install-extension bceskavich.theme-dracula-at-night && \
#    code-server --install-extension golang.go && \
#    code-server --install-extension hediet.vscode-drawio && \
#    code-server --install-extension redhat.vscode-yaml
