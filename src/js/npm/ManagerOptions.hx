package js.npm;

typedef ManagerOptions = {
	> EngineOptions,
	/**
	 * Should we force a new Manager for this connection?
	 * @default false
	 */
	?forceNew:Bool,

	/**
	 * Should we multiplex our connection (reuse existing Manager) ?
	 * @default true
	 */
	?multiplex:Bool,
	/**
	 * The path to get our client file from, in the case of the server
	 * serving it
	 * @default '/socket.io'
	 */
	?path:String,
	/**
	 * Should we allow reconnections?
	 * @default true
	 */
	?reconnection:Bool,
	/**
	 * How many reconnection attempts should we try?
	 * @default Infinity
	 */
	?reconnectionAttempts:Int,
	/**
	 * The time delay in milliseconds between reconnection attempts
	 * @default 1000
	 */
	?reconnectionDelay:Int,
	/**
	 * The max time delay in milliseconds between reconnection attempts
	 * @default 5000
	 */
	?reconnectionDelayMax:Int,
	/**
	 * Used in the exponential backoff jitter when reconnecting
	 * @default 0.5
	 */
	?randomizationFactor:Float,
	/**
	 * The timeout in milliseconds for our connection attempt
	 * @default 20000
	 */
	?timeout:Int,
	/**
	 * Should we automatically connect?
	 * @default true
	 */
	?autoConnect:Bool,
	/**
	 * weather we should unref the reconnect timer when it is
	 * create automatically
	 * @default false
	 */
	?autoUnref:Bool,
	/**
	 * the parser to use. Defaults to an instance of the Parser that ships with socket.io.
	 */
	?parser:Dynamic,
}
