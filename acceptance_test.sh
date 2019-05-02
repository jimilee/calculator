#!/bin/bash
test -silent $(curl localhost:5000/sum?a=1\&b=2) -eq 3 || \
test -silent $(curl $(docker network inspect -f '{{range.IPAM.Config}}{{.Gateway}}{{end}}' bridge):5000/sum?a=1\&b=2) -eq 3


