from flask import Flask\napp = Flask(__name__)\n\n@app.route("/")\ndef hello_world():\n\treturn "<h1>Hello World</h1>"
