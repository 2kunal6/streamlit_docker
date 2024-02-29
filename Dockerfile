FROM python:3.10

COPY . /app/
WORKDIR /app

RUN pip install pipenv
RUN pipenv install

EXPOSE 8501

ENTRYPOINT ["pipenv", "run"]

CMD ["streamlit", "run", "--server.port=8501", "--server.address=0.0.0.0", "hello_world.py"]
