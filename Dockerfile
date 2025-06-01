#Koristu malu Python baznu sliku
FROM python:3.11-slim

# Postavlja radni direktoriji unutar kontejnera
WORKDIR /app

COPY index.html /app/
COPY galerija.html /app/
COPY style/ /app/
COPY script.js /app/
COPY slike/ /app/slike/

EXPOSE 80

# Pokreni Python ugrađeni HTTP Server
CMD ["python3", "-m", "http.server","80"]
