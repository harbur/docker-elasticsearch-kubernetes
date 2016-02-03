#!/bin/sh

export CLUSTER_NAME=${CLUSTER_NAME:-elasticsearch-default}
export NODE_NAME=${NODE_NAME:-$HOSTNAME}
export NODE_MASTER=${NODE_MASTER:-true}
export NODE_DATA=${NODE_DATA:-true}
export HTTP_ENABLE=${HTTP_ENABLE:-true}
export MULTICAST=${MULTICAST:-false}

export NAMESPACE=${NAMESPACE:-default}
export DISCOVERY_SERVICE=${DISCOVERY_SERVICE:-elasticsearch-discovery}

echo "Discovery is: $DISCOVERY_SERVICE"
/elasticsearch/bin/elasticsearch
