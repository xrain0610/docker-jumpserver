FROM alpine
COPY files /tmp/install
RUN apk add --update openssh sshpass python py-mysqldb py-psutil py-crypto && rm -rf /var/cache/apk/* && mkdir /jumpserver && \
 python /tmp/install/get-pip.py && pip install -r /tmp/install/piprequires.txt && cp -r /tmp/install/jumpserver/* /jumpserver/ && \
  rm -rf /jumpserver/docs && rm -rf /jumpserver/install && cp /tmp/install/config_tmpl.conf /jumpserver/ && cp /tmp/install/run.sh /run.sh && \
  rm -rf /etc/motd && chmod +x /run.sh && cp -r /tmp/install/jumpserver/install/zzjumpserver.sh /etc/profile.d/jumpserver.sh && \
  rm -rf /tmp/install && chmod -R 777 /jumpserver
CMD /run.sh
