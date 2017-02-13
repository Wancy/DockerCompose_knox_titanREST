# DockerCompose_knox_titanREST
Getting Started
1. Install docker compose https://docs.docker.com/compose/install/

2. get git repository
1)# git clone git@github.com:Wancy/DockerCompose_knox_titanREST.git
2)# git pull
3. cd to the git repository
4. run docker compose
1)# docker-compose up -d
5. check if three containers are running
1)# docker ps

6. Try curl command

1)# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/gremlin -d '{"gremlin": "100-1"}'

2)# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/gremlin/graphs -d '{"gremlin": "100-1"}'

3)# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/gremlin?gremlin=100-1

4)# curl  -Hcontent-type:application/json -u guest:guest-password -k  https://localhost:8443/gateway/default/gremlin/graphs?gremlin=100-1

The command should all return corrent result something like:

{"requestId":"732a1e6f-b1b8-4867-9f33-044903cc604b","status":{"message":"","code":200,"attributes":{}},"result":{"data":[99],"meta":{}}}



