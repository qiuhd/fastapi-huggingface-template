# FastAPI-Huggingface Docker Template

Combines:

- [FastAPI](https://fastapi.tiangolo.com/)
- [Huggingface Transformers](https://huggingface.co/transformers/)
- [Docker](https://www.docker.com/)
- [Poetry](https://python-poetry.org/)

Into a template repository for quickly creating a FastAPI app that uses Huggingface Transformers.

## Installation

You must install all dependencies and bootstrap the project before running the app.
Bootstraping will download the model and tokenizer from Huggingface.

```
poetry install
poetry run python scripts/bootstrap.py
```

## Development

To develop locally, run:

```
poetry run uvicorn app:app --reload --app-dir src
```

## Docker

**Build**

```
docker build -t CHOOSE_A_NAME .
```

**Run**

```
docker run -p 80:80 CHOOSE_A_NAME
```
