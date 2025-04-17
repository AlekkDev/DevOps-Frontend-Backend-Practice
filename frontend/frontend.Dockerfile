# official bitnami python image
FROM bitnami/python:3.13.2
#working directory for the container
WORKDIR /frontend
# copy requirements.txt
COPY requirements.txt .
# need to install python dependencies before image build
RUN pip install --no-cache-dir -r requirements.txt
# copy the rest of the code
COPY . .
# set flask env variable, tell which file to run
ENV FLASK_APP=main.py
# expose port for flask
EXPOSE 5000


# host=0.0.0.0 makes Flask externally accessible
# port=5000 matches EXPOSE 5000 above
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]