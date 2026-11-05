# LIGHT DEBIAN IMAGE FOR PYTHON DEVELOPEMENT
FROM python:3.15-slim
LABEL authors="Zkevitz"

# INSTALL UV (TO REPLACE LATEST BY A FIX VERSION)
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# DISABLE GENERATION OF .pyc file by python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \


ENTRYPOINT ["top", "-b"]