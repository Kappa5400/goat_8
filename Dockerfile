FROM python:3.12-slim

RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH:"

RUN pip install "django"
Run pip install "cssselect"
Run pip install "lxml"

COPY src /src

WORKDIR /src

CMD ["python", "manage.py", "runserver", "0.0.0.0:8888"]

