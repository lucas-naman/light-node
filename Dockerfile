FROM golang:1.17
WORKDIR /app
RUN git clone https://github.com/lightningnetwork/lnd
WORKDIR /app/lnd
ENV PORT 8080
ENV HOST 0.0.0.0
RUN git checkout 217019a
RUN make install tags="autopilotrpc chainrpc invoicesrpc routerrpc signrpc walletrpc watchtowerrpc wtclientrpc"
COPY lnd.conf .
EXPOSE 8080
CMD ["lnd", "--lnddir=."]