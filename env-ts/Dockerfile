FROM devenv-base

RUN apt-get update && apt-get -y install build-essential nodejs npm

# Installing dependencies
RUN npm i -g typescript typescript-language-server vscode-langservers-extracted bash-language-server

# Copy configuration files.
COPY ./config/ /root/.config/
