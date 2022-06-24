#FROM python:latest
FROM mcr.microsoft.com/azure-functions/python:3.0-python3.8-appservice
RUN pip install Flask

ADD hello.py /home/hello.py

WORKDIR /home

ENTRYPOINT ["python"]
CMD ["hello.py"]