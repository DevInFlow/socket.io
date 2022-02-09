package js.npm;

typedef EngineOptions = {
	/**
	 * The host that we're connecting to. Set from the URI passed when connecting
	 */
	?host:String,

	/**
	 * The hostname for our connection. Set from the URI passed when connecting
	 */
	?hostname:String,

	/**
	 * If this is a secure connection. Set from the URI passed when connecting
	 */
	?secure:Bool,

	/**
	 * The port for our connection. Set from the URI passed when connecting
	 */
	?port:String,

	/**
	 * Any query parameters in our uri. Set from the URI passed when connecting
	 */
	?query:Dynamic,

	/**
	 * `http.Agent` to use, defaults to `false` (NodeJS only)
	 */
	#if nodejs
	?agent:haxe.extern.EitherType<String, Bool>,
	#end
	/**
	 * Whether the client should try to upgrade the transport from
	 * long-polling to something better.
	 * @default true
	 */
	?upgrade:Bool,

	/**
	 * Forces JSONP for polling transport.
	 */
	?forceJSONP:Bool,

	/**
	 * Determines whether to use JSONP when necessary for polling. If
	 * disabled (by settings to false) an error will be emitted (saying
	 * "No transports available") if no other transports are available.
	 * If another transport is available for opening a connection (e.g.
	 * WebSocket) that transport will be used instead.
	 * @default true
	 */
	?jsonp:Bool,

	/**
	 * Forces base 64 encoding for polling transport even when XHR2
	 * responseType is available and WebSocket even if the used standard
	 * supports binary.
	 */
	?forceBase64:Bool,

	/**
	 * Enables XDomainRequest for IE8 to avoid loading bar flashing with
	 * click sound. default to `false` because XDomainRequest has a flaw
	 * of not sending cookie.
	 * @default false
	 */
	?enablesXDR:Bool,
	/**
	 * The param name to use as our timestamp key
	 * @default 't'
	 */
	?timestampParam:String,
	/**
	 * Whether to add the timestamp with each transport request. Note: this
	 * is ignored if the browser is IE or Android, in which case requests
	 * are always stamped
	 * @default false
	 */
	?timestampRequests:Bool,
	/**
	 * A list of transports to try (in order). Engine.io always attempts to
	 * connect directly with the first one, provided the feature detection test
	 * for it passes.
	 * @default ['polling','websocket']
	 */
	?transports:Array<Transport>,
	/**
	 * The port the policy server listens on
	 * @default 843
	 */
	?policyPost:Float,
	/**
	 * If true and if the previous websocket connection to the server succeeded,
	 * the connection attempt will bypass the normal upgrade process and will
	 * initially try websocket. A connection attempt following a transport error
	 * will use the normal upgrade process. It is recommended you turn this on
	 * only when using SSL/TLS connections, or if you know that your network does
	 * not block websockets.
	 * @default false
	 */
	?rememberUpgrade:Bool,
	/**
	 * Are we only interested in transports that support binary?
	 */
	?onlyBinaryUpgrades:Bool,
	/**
	 * Timeout for xhr-polling requests in milliseconds (0) (only for polling transport)
	 */
	?requestTimeout:Float,
	/**
	 * Transport options for Node.js client (headers etc)
	 */
	?transportOptions:Dynamic,
	/**
	 * (SSL) Certificate, Private key and CA certificates to use for SSL.
	 * Can be used in Node.js client environment to manually specify
	 * certificate information.
	 */
	?pfx:String,
	/**
	 * (SSL) Private key to use for SSL. Can be used in Node.js client
	 * environment to manually specify certificate information.
	 */
	?key:String,
	/**
	 * (SSL) A String or passphrase for the private key or pfx. Can be
	 * used in Node.js client environment to manually specify certificate
	 * information.
	 */
	?passphrase:String,
	/**
	 * (SSL) Public x509 certificate to use. Can be used in Node.js client
	 * environment to manually specify certificate information.
	 */
	?cert:String,
	/**
	 * (SSL) An authority certificate or array of authority certificates to
	 * check the remote host against.. Can be used in Node.js client
	 * environment to manually specify certificate information.
	 */
	?ca:haxe.extern.EitherType<String, Array<String>>,
	/**
	 * (SSL) A String describing the ciphers to use or exclude. Consult the
	 * [cipher format list]
	 * (http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT) for
	 * details on the format.. Can be used in Node.js client environment to
	 * manually specify certificate information.
	 */
	?ciphers:String,
	/**
	 * (SSL) If true, the server certificate is verified against the list of
	 * supplied CAs. An 'error' event is emitted if verification fails.
	 * Verification happens at the connection level, before the HTTP request
	 * is sent. Can be used in Node.js client environment to manually specify
	 * certificate information.
	 */
	?rejectUnauthorized:Bool,
	/**
	 * Headers that will be passed for each request to the server (via xhr-polling and via websockets).
	 * These values then can be used during handshake or for special proxies.
	 */
	?extraHeaders:Dynamic,

	/**
	 * Whether to include credentials (cookies, authorization headers, TLS
	 * client certificates, etc.) with cross-origin XHR polling requests
	 * @default false
	 */
	?withCredentials:Bool,

	/**
	 * Whether to automatically close the connection whenever the beforeunload event is received.
	 * @default true
	 */
	?closeOnBeforeunload:Bool,

	/**
	 * Whether to always use the native timeouts. This allows the client to
	 * reconnect when the native timeout functions are overridden, such as when
	 * mock clocks are installed.
	 * @default false
	 */
	?useNativeTimers:Bool,
}
