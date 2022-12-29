FROM tensorflow/tensorflow
RUN mkdir tf-model
WORKDIR /tf-model
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["sh","start.sh"]