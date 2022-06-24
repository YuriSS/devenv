FROM ubuntu:22.10

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV EDITOR nvim

EXPOSE 3000

RUN apt-get update && apt-get -y install curl fzf ripgrep tree git xclip python3 python3-pip ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config zip unzip

# Install Neovim from source.
RUN mkdir -p /root/TMP
RUN cd /root/TMP && git clone https://github.com/neovim/neovim
RUN cd /root/TMP/neovim && git checkout stable && make -j4 && make install
RUN rm -rf /root/TMP

# Install packer
Run git clone --depth 1 https://github.com/wbthomason/packer.nvim /root/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create directory for Neovim configuration files.
RUN mkdir -p /root/.config/nvim

# Create directory for projects (there should be mounted from host).
RUN mkdir -p /root/workspace

# Set default location after container startup.
WORKDIR /root/workspace

# Avoid container exit.
CMD ["tail", "-f", "/dev/null"]
