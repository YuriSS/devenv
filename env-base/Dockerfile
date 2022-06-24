FROM ubuntu:22.10

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV EDITOR nvim
ENV WORKSPACE=/root/workspace

EXPOSE 3000

RUN apt-get update && apt-get -y install curl fzf ripgrep tree git xclip python3 python3-pip ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config zip unzip tmux

# Install Neovim from source.
RUN mkdir -p /root/TMP
RUN cd /root/TMP && git clone https://github.com/neovim/neovim
RUN cd /root/TMP/neovim && git checkout stable && make -j4 && make install
RUN rm -rf /root/TMP

# Install packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim /root/.local/share/nvim/site/pack/packer/start/packer.nvim

# Copy configuration files.
COPY ./config/ /root/.config/
COPY ./home/ /root/
COPY ./bin/ /usr/local/bin/

# Create directory for projects (there should be mounted from host).
RUN mkdir -p $WORKSPACE

# Set default location after container startup.
WORKDIR $WORKSPACE

RUN echo 'source /usr/share/bash-completion/completions/fzf' >> /root/.bashrc

# Avoid container exit.
CMD ["tail", "-f", "/dev/null"]
