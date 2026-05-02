FROM nginx:alpine

RUN echo "Build time: $(date)" > /build-info.txt

COPY ./default.conf /etc/nginx/conf.d/
