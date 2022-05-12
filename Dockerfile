FROM cloudron/base:3.2.0@sha256:ba1d566164a67c266782545ea9809dc611c4152e27686fd14060332dd88263ea

RUN mkdir -p /app/code /app/data
WORKDIR /app/code

ENV VERSION=2.11.1

COPY spa/.output /app/code/
RUN sysctl -w fs.inotify.max_user_watches=524288

# copy start script
ADD start.sh /app/code/
RUN ls
RUN chmod +x /app/code/server/index.mjs
RUN chmod +x /app/code/start.sh

CMD [ "/app/code/start.sh" ]