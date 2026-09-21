package hx.ws;

#if hxnodejs
class SecureSocketImpl extends hx.ws.nodejs.NodeSocket {
    public var verifyCert: Bool = false;
    public function setCA(ca) {}
    public function setHostname(host) {}
    public function setCertificate(cert, key) {
    }
}
#else
typedef SecureSocketImpl = sys.ssl.Socket;
#end