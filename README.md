# DockerCompose_knox_titanREST
Getting Started

docker-compose run 
./knox_titanREST.sh

The request will all return the following result by gremlin-server

HTTP/1.1 400 Bad Request
Date: Wed, 25 Jan 2017 08:18:56 GMT
Set-Cookie: JSESSIONID=1evell28k1mo0w9tbnfrf6vxu;Path=/gateway/titan;Secure;HttpOnly
Expires: Thu, 01 Jan 1970 00:00:00 GMT
Set-Cookie: rememberMe=deleteMe; Path=/gateway/titan; Max-Age=0; Expires=Tue, 24-Jan-2017 08:18:56 GMT
Content-Type: application/json; charset=UTF-8
Content-Length: 38
Server: Jetty(9.2.15.v20160210)

{"message":"body could not be parsed"}

if specify query it will return the correct result.
