FROM devenv-base

RUN apt-get -y install build-essential nodejs npm

# Installing dependencies
RUN npm i -g typescript typescript-language-server vscode-langservers-extracted

# Copy configuration files.
COPY ./config/ /root/.config/
