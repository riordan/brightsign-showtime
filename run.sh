#/bin/sh

docker run -d --name brightsign-showtime -v $(pwd)/content:/opt/notebooks -p 8888:8888 brightsign-showtime:latest

