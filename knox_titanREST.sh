#!/usr/bin/env bash

CURL="curl -i -k -u guest:guest-password"
KNOX="https://localhost:8443/gateway/default/titan"

$CURL "$KNOX?gremlin=100-1"
$CURL "$KNOX -d '{"gremlin": "100-1"}'"
$CURL "$KNOX/graphs -d '{"gremlin": "100-1"}'"
$CURL "$KNOX/graphs?gremlin=100-1"
