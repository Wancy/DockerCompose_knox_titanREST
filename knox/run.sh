#!/bin/bssh
# use cassandra backed db instead of berkeleyje
# sed -i "s/host: localhost/host: 0.0.0.0/g" conf/gremlin-server/gremlin-server.yaml
sed -i "s/titan-berkeleyje-server.properties/titan-cassandra-server.properties/g" /opt/titan-1.0.0-hadoop1/conf/gremlin-server/gremlin-server.yaml
sed -i "s/channelizer: org.apache.tinkerpop.gremlin.server.channel.WebSocketChannelizer/channelizer: org.apache.tinkerpop.gremlin.server.channel.HttpChannelizer/g" /opt/titan-1.0.0-hadoop1/conf/gremlin-server/gremlin-server.yaml

# create the backing file
echo "gremlin.graph=com.thinkaurelius.titan.core.TitanFactory
storage.backend=cassandra
storage.hostname=localhost
index.search.backend=elasticsearch
index.search.elasticsearch.interface=NODE
" > conf/gremlin-server/titan-cassandra-server.properties

/opt/titan-1.0.0-hadoop1/bin/titan.sh start 
