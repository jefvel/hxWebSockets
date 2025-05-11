package hx.ws;

class Handler extends WebSocketCommon {
	public var validateHandshake:(Handler, HttpRequest, HttpResponse, (HttpResponse) -> Void) -> Void = null;
	public var metadata = new Map<String, Dynamic>();

	public function new(socket:SocketImpl) {
		super(socket);
		isClient = false;
	}

	public function handle() {
		process();
	}
}
