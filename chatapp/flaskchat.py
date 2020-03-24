from flask import Flask
from flask_socketio import SocketIO

app= Flask(__name__)
app.config['SECRECT_KEY'] = "mysecretkey"
socketio = SocketIO(app)

@app.route("/mychapapp")
def chatsesson():
    return render_template("chat.html")

def messages_rec(methods = ['GET', 'POST']):
    print("message has been received")

@socketio.on('my event')
def handle(json, methods = ['GET', 'POST']):
    print("received message:" + str(json))
    socketio.emit('my response', json, callback = messages_rec)

if __name__ == '__main__':
    socketio.run(app, debug = True)
