#Koristu malu Python baznu sliku
FROM python:3.13-alpine

# Instaliraj Python i osnovne pakete
RUN apk add --no-cache python3 py3-pip

# Postavlja radni direktoriji unutar kontejnera
WORKDIR /app

COPY index.html /app/
COPY galerija.html /app/
COPY glavnaS.html /app/
COPY style/ /app/style/
COPY script.js /app/
COPY slike/ /app/slike/

EXPOSE 80

# Pokreni Python ugrađeni HTTP Server
CMD ["python3", "-m", "http.server","80"]
