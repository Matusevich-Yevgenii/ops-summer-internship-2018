def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    return [b"Hello MacPaw. You are welcome in my LinkedIn (https://www.linkedin.com/in/ygritte/). I with big pleasure answer on your questions about tasks or another info. As you can see in my profile I study at university, passionate for self-development and have a few experience in system and network solutions."]
