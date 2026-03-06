# Dockerfile
FROM python:3.12-slim

# Install Poetry
RUN pip install poetry

WORKDIR /app
COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root

COPY . .

ENTRYPOINT ["poetry", "run", "python", "main.py"]