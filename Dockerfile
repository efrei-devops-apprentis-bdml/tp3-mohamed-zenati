FROM python:alpine3.16

# set the working directory in the container
WORKDIR C:/Users/zmoha/OneDrive/Documents/spark-df/tp3-mohamed-zenati

COPY app.py ./

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# command to run on container start
#CMD ["flask", "run", "--host", "0.0.0.0:8081"]
CMD [ "python3", "./app.py" ]
