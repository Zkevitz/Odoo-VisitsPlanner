# LIGHT DEBIAN IMAGE FOR PYTHON DEVELOPEMENT
FROM python:3.15-slim
LABEL authors="Zkevitz"

# INSTALL UV (!REPLACE LATEST BY A FIX VERSION!)
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# PYTHONDONTWRITEBYTECODE=1  : DISABLE GENERATION OF .pyc file by python
# PYTHONUNBUFFERED=1 : DISABLE CONTAINER BUFFER JUST TO MAKE PRINT INSTANT
# UV_NO_CACHE=1 : DISABLE UV CACHE
# PATH="/app/.venv/bin:$PATH" : ADD OUR VENV TO THE FRONT OF THE PATH
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    UV_NO_CACHE=1 \
    PATH="/app/.venv/bin:$PATH"

# CREATE LOCATION FOR THE PROJECT IN THE CONTAINER EVERY CMD START FROM HERE (folder : app)
WORKDIR /app

# COPY UV DEPENDENCIES FILES
COPY pyproject.toml uv.lock ./

# UV SYNC COMMAND TO INSTALL ONLY DEPENDENCIES
# --locked : make a strict no-go when uv.lock doesnt match pyproject.toml
# --no-install-project : install only dependencies (doesnt install project)
# --no-dev : ignore dev dependencies
RUN uv sync --locked --no-install-project --no-dev

# COPY MODULES FILES
COPY src/ ./src/
COPY main.py ./

# CREATE USER WITHOUT ROOT PERMISSION AND USE IT AT THIS POINT
RUN useradd --create-home appuser
USER appuser

CMD ["python", "-m", "main"]