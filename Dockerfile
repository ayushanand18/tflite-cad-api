FROM eiqcloud/tflite-inference
RUN mkdir tf-model
WORKDIR /tf-model
COPY . .
RUN poetry install -vvv --no-dev
EXPOSE 5000
CMD ["sh","start.sh"]