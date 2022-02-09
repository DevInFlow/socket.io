package js.npm;

@:enum abstract Transport(String) to String{
    var polling = "polling";
    var websocket = "websocket";
}