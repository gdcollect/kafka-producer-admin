FROM wurstmeister/kafka

MAINTAINER armen arzumanyan

RUN sed -i 's/#max.request.size=/max.request.size=209715200/g' $KAFKA_HOME/config/producer.properties
RUN sed -i 's/#buffer.memory=/buffer.memory=209715200/g' $KAFKA_HOME/config/producer.properties
RUN echo "max.partition.fetch.bytes=209715200" >> $KAFKA_HOME/config/consumer.properties

ENV ADVERTISED_PORT=9092
ENV JMX_PORT=7071
ENV ZOOKEEPER_TIMEOUT_MS=16000
ENV MESSAGE_MAX_BYTES=209715200
ENV FETCH_MESSAGE_MAX_BYTES=209715200
ENV REPLICA_FETCH_MAX_BYTES=209715200
ENV MAX_PARTITION_FETCH.BYTES=209715200
ENV FETCH_MAX_BYTES=209715200
ENV KAFKA_MESSAGE_MAX_BYTES=209715200