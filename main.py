import os

def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    if env['PATH_INFO'] == '/ip':
        return [os.popen("./public_ip.py").read().encode()]
    else:    
        return [open("/var/www/html/index.html", "rb").read()]
