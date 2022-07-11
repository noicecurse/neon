FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/neon.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/neon

COPY neon.sh /usr/bin/neon.sh
RUN chmod +x /usr/bin/neon.sh
COPY target/neon.jar /usr/share/neon/neon.jar