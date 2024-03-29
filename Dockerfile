# pull python base image - Feb 29 2024
FROM python:3.11
# copy application files
ADD . .

# specify working directory
WORKDIR /bikeshare_model_api

# update pip
RUN pip install --upgrade pip

# install dependencies
RUN pip install -r requirements.txt

# expose port for application
EXPOSE 8001


# start fastapi application
CMD ["python", "app/main.py"]
