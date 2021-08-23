FROM tensorflow/serving

ENV MODEL_BASE_PATH /models
ENV MODEL_NAME baseclf
ENV MODEL_CONFIG_FILE models.conf


#Don't Touch
COPY models/models.conf models/models.conf

#add your new model path here
COPY models/default models/default
COPY models/tomato models/tomato
COPY models/potato models/potato
COPY models/corn models/corn


# Fix because base tf_serving_entrypoint.sh does not take $PORT env variable while $PORT is set by Heroku!
# CMD is required to run on Heroku
COPY tf_serving_entrypoint.sh /usr/bin/tf_serving_entrypoint.sh
RUN chmod +x /usr/bin/tf_serving_entrypoint.sh
ENTRYPOINT []
CMD ["/usr/bin/tf_serving_entrypoint.sh"]