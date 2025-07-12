FROM mlan/asterisk:full

# Copy your custom configs into the image
COPY config/http.conf /etc/asterisk/http.conf
COPY config/ari.conf  /etc/asterisk/ari.conf

EXPOSE 8088

CMD ["asterisk", "-f", "-U", "asterisk", "-G", "asterisk"]
