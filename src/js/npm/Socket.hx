package js.npm;

import haxe.extern.Rest;

@:jsRequire("socket.io-client", "Socket")
extern class Socket {
	public var id:Null<String>;
	public var connected:Bool;
	public var disconnected:Bool;
	public function new():Void;
	public function connect():Socket;
	public function open():Void;
	public function send(args:haxe.extern.Rest<Dynamic>):Socket;
	public function emit(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	public function on(eventName:String, callback:Dynamic):Void;
	public function onAny(callback:String->Rest<Dynamic>->Void):Void;
	public function prependAny(callback:String->Rest<Dynamic>->Void):Void;
	public function offAny(?callback:String->Rest<Dynamic>->Void):Void;
	public function listenersAny():Array<Dynamic>;
	public function compress(value:Bool):Socket;
	public function disconnect():Socket;
	public function close():Void;
	@:native("volatile")
	public var volatile:Socket;
	public inline function onConnect(listener:Void->Void):Void
		this.on("connect", listener);
	public inline function onDisconnect(listener:String->Void):Void
		this.on("disconnect", listener);
	public inline function onConnectError(listener:Dynamic->Void):Void
		this.on("connect_error", listener);
}