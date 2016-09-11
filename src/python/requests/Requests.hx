package python.requests;

import python.KwArgs;

@:pythonImport("requests")
extern class Requests {

    static function request(method: String, url: String, ?args: KwArgs<{}>): Response;

    static function head(url: String, ?args: KwArgs<{}>): Response;

    static function get(url: String, ?args: KwArgs<{}>): Response;

    static function post(url: String,?args: KwArgs<{}>): Response;

    static function put(url: String, ?args: KwArgs<{}>): Response;

    static function patch(url: String, ?args: KwArgs<{}>): Response;

}

/*

Possible keyword args:

params -- (optional) Dictionary or bytes to be sent in the query string for the Request.
data -- (optional) Dictionary, bytes, or file-like object to send in the body of the Request.
json -- (optional) json data to send in the body of the Request.
headers -- (optional) Dictionary of HTTP Headers to send with the Request.
cookies -- (optional) Dict or CookieJar object to send with the Request.
files -- (optional) Dictionary of 'name': file-like-objects (or {'name': file-tuple}) for multipart encoding upload. file-tuple can be a 2-tuple ('filename', fileobj), 3-tuple ('filename', fileobj, 'content_type') or a 4-tuple ('filename', fileobj, 'content_type', custom_headers), where 'content-type' is a string defining the content type of the given file and custom_headers a dict-like object containing additional headers to add for the file.
auth -- (optional) Auth tuple to enable Basic/Digest/Custom HTTP Auth.
timeout (float or tuple) -- (optional) How long to wait for the server to send data before giving up, as a float, or a (connect timeout, read timeout) tuple.
allow_redirects (bool) -- (optional) Boolean. Set to True if POST/PUT/DELETE redirect following is allowed.
proxies -- (optional) Dictionary mapping protocol to the URL of the proxy.
verify -- (optional) whether the SSL cert will be verified. A CA_BUNDLE path can also be provided. Defaults to True.
stream -- (optional) if False, the response content will be immediately downloaded.
cert -- (optional) if String, path to ssl client cert file (.pem). If Tuple, ('cert', 'key') pair.

*/