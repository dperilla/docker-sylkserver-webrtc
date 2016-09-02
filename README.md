# dperilla/docker-sylkserver-webrtc
Docker image for Sylkserver WebRTC Gateway withis that bundles the latest version of sylkserver in ubuntu LTS Xenial.

What is Sylkserver?

SylkServer allows creation and delivery of rich multimedia applications accessed by SIP Clients, XMPP endpoints and Web applications. The server supports SIP and XMPP signaling, RTP, MSRP and WebRTC media planes, has built in capabilities for creating multiparty conferences with wideband Audio, IM/ File Transfers and can be easily extended with other custom applications by using Python language.

# Run the following command:

docker run -d --name my-sylkserver dperilla/docker-sylkserver-webrtc

# Enter in container console:

docker exec -it my-sylkserver bash
