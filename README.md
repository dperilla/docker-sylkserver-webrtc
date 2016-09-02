# dperilla/docker-sylkserver-webrtc
Docker image for Sylkserver WebRTC Gateway with is that bundles the latest version of sylkserver in ubuntu LTS Xenial. Is based in oficial installation: http://sylkserver.com/download/

#What is Sylkserver?

SylkServer allows creation and delivery of rich multimedia applications accessed by SIP Clients, XMPP endpoints and Web applications. The server supports SIP and XMPP signaling, RTP, MSRP and WebRTC media planes, has built in capabilities for creating multiparty conferences with wideband Audio, IM/ File Transfers and can be easily extended with other custom applications by using Python language.

Starting with version 3.0.0 SylkServer features WebRTC gateway capabilities. This application implements a WebSocket protocol which WebRTC endpoints can use in order to interact bidirectionally with the SIP world.

More info in http://projects.ag-projects.com/projects/sylkserver/wiki/WebRTC


#Installation:

Install Docker.

Download automated build from public Docker Hub Registry: docker pull dperilla/docker-sylkserver-webrtc

(alternatively, you can build an image from Dockerfile: docker build -t="dperilla/sylkserver" github.com/dperilla/docker-sylkserver-webrtc)

#Usage

# Run the following command:
docker run -d --name my-sylkserver dperilla/docker-sylkserver-webrtc

# Enter in container console:
docker exec -it my-sylkserver bash

# Logging container:
docker logs -f my-sylkserver

# To set public ip to container (example public ip 88.88.88.2):
docker network create --subnet 88.88.88.0/24 --gateway 88.88.88.254 iptastic

docker run -d --name --net iptastic --ip 88.88.88.2 my-sylkserver dperilla/docker-sylkserver-webrtc

More info in:
https://blog.jessfraz.com/post/ips-for-all-the-things/



