FROM rasa/rasa:3.6.13-full
# WORKDIR '/app'
# COPY . /app
USER root
WORKDIR /app
RUN python3 -m spacy download es_core_news_md
COPY . /app
COPY ./data /app/data
# RUN cat /app/data/stories.yml
# RUN pip install --upgrade pip
# RUN pip install -r requirements_docker.txt
RUN rasa train
#VOLUME /app
#VOLUME /app/data
#VOLUME /app/models
CMD ["run","-m","/app/models","--enable-api","--cors","*","--debug" ,"--endpoints", "endpoints.yml", "--log-file", "out.log", "--debug"]  
# ENTRYPOINT ["bash"]
