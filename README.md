# docker-helios

This is the source to build a Docker image that will let you run temporary Helios server on your local machine.

Build the Docker image:

```
docker build -t helios .
```

Run the image:

```
docker run -d --name postgres -e 'POSTGRES_USER=myapp' postgres
docker run -d --name helios -e 'HELIOS_DB_NAME=myapp' -p 8080:8080 --link postgres:postgres helios
```

Access the admin page:

```
open http://$(boot2docker ip):8080/admin
```

## License

MIT license

