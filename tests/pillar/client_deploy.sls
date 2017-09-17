docker:
  client:
    enabled: true
    stack:
      django_web:
        enabled: true
        environment:
          SOMEVAR: somevalue
        version: 3.3
        service:
          db:
            image: postgres
          web:
            image: djangoapp
            volumes:
              - /srv/volumes/django:/srv/django
            ports:
              - 8000:8000
            depends_on:
              - db
