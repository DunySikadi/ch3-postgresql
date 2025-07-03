# Récupérer l’image de base
FROM python:3.10.4-slim-bullseye

# Définir des variables d’environnement
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Définir le répertoire de travail
WORKDIR /code

# Installer les dépendances
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copier le projet
COPY . .
