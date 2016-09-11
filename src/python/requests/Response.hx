package python.requests;

import python.Bytes;
import python.Dict;

extern class Response {

    var content (default,null): Bytes;

    var text (default,null): String;
    var apparent_encoding (default,null): String;

    var headers (default,null): Null<Dict<String,String>>;

    var reason (default,null): Null<String>; // text of error status
    var status_code (default,null): Int;

    // history contains any redirections
    var history (default,null): Null<Array<Response>>;
    var is_permanent_redirect (default,null): Bool;
    var is_redirect (default,null): Bool;

    // final URL after redirects
    var url (default,null): Null<String>;
}
