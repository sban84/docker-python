# Define the base image ,in this case its python slim buster small image
FROM python:3.8-slim-buster

# define the working dir, its the dir where files will be copied inside the container
WORKDIR /app

# copy requirements.txt to container inside /app
COPY requirements.txt requirements.txt

# run the requirements for the dependencies to get installed
RUN pip3 install -r requirements.txt

# copy other src files, putting here will avoid multiple times dependencies to get installed previous step
COPY . .

#CMD ["python", "./app.py"]


