import os

def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    if env['PATH_INFO'] == '/ip':
        return [b"<!DOCTYPE html><html><head></head><body>" + \
                b"<h3>Your public IP:</h3><h2><b> " + \
                os.popen("./public_ip.py").read().encode() + \
                b"</b></h2></body></html>"]
    else:    
        return [open("/var/www/html/index.html", "rb").read()]
