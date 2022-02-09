package js.npm;

typedef ClientOptions = {
    ?transports:Array<Transport>,
    ?autoConnect:Bool,
    ?reconnectionDelayMax:Int,
    ?auth:{token:String},
    ?query:String,
    ?secure:Bool
}
