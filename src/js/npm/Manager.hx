package js.npm;


@:jsRequire("socket.io-client", "Manager")
extern class Manager {
	@:overload(function(options:ManagerOptions):Void {})
	@:overload(function(uri:String):Void {})
	public function new(url:String, options:ClientOptions):Void;
	public function reconnection(?value:Bool):haxe.extern.EitherType<Manager, Bool>;
	public function reconnectionAttempts(?value:Float):haxe.extern.EitherType<Manager, Float>;
	public function reconnectionDelay(?value:Float):haxe.extern.EitherType<Manager, Float>;
	public function reconnectionDelayMax(?value:Float):haxe.extern.EitherType<Manager, Float>;
	public function timeout(?value:Float):haxe.extern.EitherType<Manager, Float>;
	public function open(?callback:Dynamic->Void):Manager;
	public function connect(?callback:Dynamic->Void):Manager;
	public function socket(path:String, ?options:SocketOptions):Socket;
    public function on(event:String,listener:Dynamic->Void):Void
	public inline function onError(listener:Dynamic->Void):Void
		this.on("error", listener);
	public inline function onReconnect(listener:Float->Void):Void
		this.on("reconnect", listener);
	public inline function onReconnectAttempt(listener:Float->Void):Void
		this.on("reconnect_attempt", listener);
	public inline function onReconnectError(listener:Dynamic->Void):Void
		this.on("reconnect_error", listener);
	public inline function onReconnectFailed(listener:Void->Void):Void
		this.on("reconnect_failed", listener);
	public inline function onPing(listener:Void->Void):Void
		this.on("ping", listener);
}
