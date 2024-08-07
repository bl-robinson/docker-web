
FROM dinutac/jinja2docker:2.1.8 AS jinja

COPY templates/site.jinja site.jinja
COPY templates/vars.yaml vars.yaml

RUN jinja2 site.jinja vars.yaml > site.conf


FROM nginx:1.26

COPY config/nginx.conf /etc/nginx/
COPY --from=jinja site.conf /etc/nginx/sites-available/site.conf

