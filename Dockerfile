FROM python:3.10

COPY Pipfile Pipfile.lock ./

RUN pip install pipenv
RUN pipenv install

ADD . /app/
WORKDIR /app

CMD ["streamlit", "run", "hello_world.py"]
