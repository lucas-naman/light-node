FROM golang:1.17
WORKDIR /root
RUN git clone https://github.com/lightningnetwork/lnd
RUN mv lnd .lnd
WORKDIR /root/.lnd
RUN git checkout 86114c5
RUN make install tags="autopilotrpc chainrpc invoicesrpc routerrpc signrpc walletrpc watchtowerrpc wtclientrpc"

COPY lnd.conf .

EXPOSE 10009
CMD ["lnd"]