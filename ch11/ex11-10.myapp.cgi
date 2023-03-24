# CGI on lighttpd

server.port = 3000
server.document-root = "home/michael"
server.modules = ("mod_cgi", "mod_rewrite")

url.rewrite-once = (
    "(.*)" => "/myapp.cgi/$1"
)

cgi.assign = (".cgi" => "")