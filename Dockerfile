FROM tensorflow/serving

ENV MODEL_BASE_PATH /models
#ENV MODEL_NAME baseclf
ENV MODEL_CONFIG_FILE models.conf

COPY models/baseclf models/baseclf
COPY models/resnet models/resnet
COPY models/models.conf models/models.conf


# Fix because base tf_serving_entrypoint.sh does not take $PORT env variable while $PORT is set by Heroku!
# CMD is required to run on Heroku
COPY tf_serving_entrypoint.sh /usr/bin/tf_serving_entrypoint.sh
RUN chmod +x /usr/bin/tf_serving_entrypoint.sh
ENTRYPOINT []
CMD ["/usr/bin/tf_serving_entrypoint.sh"]