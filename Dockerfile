FROM gcr.io/uwit-mci-axdd/nginx-container:1.0.3 as app-container

USER acait

COPY --chown=acait:acait index.html package.json vite.config.js /app/
COPY --chown=acait:acait unauthorized-user /app/unauthorized-user
COPY --chown=acait:acait src /app/src

RUN . /app/bin/activate &&\
    npm install vite &&\
    npm run build
