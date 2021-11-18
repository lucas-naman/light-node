FROM golang:1.17
WORKDIR /app
RUN git clone https://github.com/lightningnetwork/lnd
WORKDIR /app/lnd
RUN git checkout 217019a
RUN make install tags="autopilotrpc chainrpc invoicesrpc routerrpc signrpc walletrpc watchtowerrpc wtclientrpc"

COPY lnd.conf .
RUN echo $CERT >> tls.cert
RUN echo $KEY >> tls.key

EXPOSE 10009
CMD ["lnd", "--lnddir=."]