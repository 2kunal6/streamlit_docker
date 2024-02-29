FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /app/
WORKDIR /app

RUN pip install pipenv
RUN pipenv install

ENTRYPOINT ["pipenv", "run"]

CMD ["streamlit", "run", "hello_world.py"]
