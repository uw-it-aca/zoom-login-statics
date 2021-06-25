FROM gcr.io/uwit-mci-axdd/nginx-container:1.0.2 as app-container

USER acait

COPY --chown=acait:acait index.html package.json vite.config.js /app/
COPY --chown=acait:acait unauthorized-user /app/unauthorized-user
COPY --chown=acait:acait public /app/public

RUN . /app/bin/activate &&\
    npm install vite &&\
    npm run build
