from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('index.html')


@app.route('/about')
def about():
    return "Esta es la página 'Acerca de'"


@app.route('/greet', methods=['POST'])
def greet():
    name = request.form.get('name')
    return f"¡Hola, {name}!"


if __name__ == '__main__':
    app.run(debug=True)
