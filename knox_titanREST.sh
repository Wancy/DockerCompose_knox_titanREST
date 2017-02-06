#!/usr/bin/env bash

CURL="curl -Hcontent-type:application/json -k -u guest:guest-password"
KNOX="https://localhost:8443/gateway/default/titan"

$CURL "$KNOX?gremlin=100-1"
echo ""
$CURL "$KNOX/%20-d%20'{\"gremlin\":%20\"100-1\"}'"
echo ""
$CURL "$KNOX/graphs%20-d%20'{\"gremlin\":%20\"100-1\"}'"
echo ""
$CURL "$KNOX/graphs?gremlin=100-1"
