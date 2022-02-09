package js.npm;

@:jsRequire("socket.io-client", "default")
extern class Io {
	@:selfCall
	@:overload(function(options:LookupOptions):Socket {})
	@:overload(function(url:String):Socket {})
	@:overload(function(url:String, options:LookupOptions):Socket {})
	public static function lookup():Socket;
}
