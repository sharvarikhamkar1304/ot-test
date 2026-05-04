FROM nginx:alpine

# Install debugging tools + shells
RUN apk add --no-cache \
    bash \
    zsh \
    curl \
    wget \
    vim \
    nano \
    tcpdump \
    bind-tools \
    iputils \
    net-tools

# (Optional) set zsh as default shell
RUN chsh -s /bin/zsh || true

# Copy nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Set default shell for RUN
SHELL ["/bin/bash", "-c"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
