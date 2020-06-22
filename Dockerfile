FROM redis:6.0.5-alpine

#RUN mkdir -p /conf

#COPY fix-ip.sh /conf/fix-ip.sh
# ENTRYPOINT ["/conf/fix-ip.sh"]

#CMD ["/conf/fix-ip.sh", "redis-server"]
CMD [ "redis-server"]