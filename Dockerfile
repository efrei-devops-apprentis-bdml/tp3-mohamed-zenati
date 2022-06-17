FROM python:alpine3.16

# set the working directory in the container
WORKDIR /app


# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# command to run on container start
#CMD ["flask", "run", "--host", "0.0.0.0:8081"]
COPY . .

CMD [ "python3", "./app.py" ]
