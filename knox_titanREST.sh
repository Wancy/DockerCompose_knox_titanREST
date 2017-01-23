#!/usr/bin/env bash

CURL="curl -i -k -u guest:guest-password"
KNOX="https://localhost:8443/gateway/default/titan"

$CURL "$KNOX?gremlin"
$CURL "$KNOX"
$CURL "$KNOX/graphs"
$CURL "$KNOX/graphs?gremlin"
