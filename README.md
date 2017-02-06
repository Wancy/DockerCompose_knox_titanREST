# DockerCompose_knox_titanREST
Getting Started
1. Install docker compose https://docs.docker.com/compose/install/
2. get git repository
# git clone git@github.com:Wancy/DockerCompose_knox_titanREST.git
# git pull
3. cd to the git repository
4. run docker compose
# docker-compose up -d
5. check if three containers are running
# docker ps

6. Try curl command

# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/titan -d '{"gremlin": "100-1"}'

# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/titan/graphs -d '{"gremlin": "100-1"}'

# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/titan?gremlin=100-1

# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/titan/graphs?gremlin=100-1

The command should all return corrent result something like:

{"requestId":"732a1e6f-b1b8-4867-9f33-044903cc604b","status":{"message":"","code":200,"attributes":{}},"result":{"data":[99],"meta":{}}}



