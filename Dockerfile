ARG PROJECT_NAME=python-boilerplate

from python:3.9.10 as base
RUN curl -sSL https://install.python-poetry.org | python3 -
RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> /root/.bashrc

from base as development
WORKDIR /workspaces/$PROJECT_NAME

from base as builder
WORKDIR /app
COPY src/ src/
COPY tests/ tests/
COPY pyproject.toml .
COPY poetry.toml .
COPY poetry.lock .
COPY setup.cfg .
RUN /root/.local/bin/poetry install
RUN flake8 src/
RUN mypy src/
RUN pytest

from base
ENV PACKAGE_NAME=$PACKAGE_NAME
WORKDIR /app
COPY src/ src/
COPY --from=builder /app/pyproject.toml /app/pyproject.toml
COPY poetry.toml .
COPY poetry.lock .
COPY setup.cfg .
RUN /root/.local/bin/poetry install --no-dev
RUN rm -f pyproject.toml && rm -f poetry.toml && rm -f poetry.lock && rm -f setup.cfg
CMD [ "python", "src/new_package/main.py"]
