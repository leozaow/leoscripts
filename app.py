from flask import Flask, render_template, redirect, url_for, request, Response, flash, current_app
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from werkzeug.security import generate_password_hash, check_password_hash
from datetime import datetime
import random
import string

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://leandro:leandro99@localhost/db'
db = SQLAlchemy(app)
app.config['SECRET_KEY'] = 'leandro99'


class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(150), unique=True)
    password = db.Column(db.String(255))
    is_admin = db.Column(db.Boolean, default=False)

    def __repr__(self):
        return f'<User {self.username}>'

class Key(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    key_value = db.Column(db.String(50), unique=True)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'))
    contrachave = db.Column(db.String(150))
    data_hora = db.Column(db.DateTime)
    cliente = db.Column(db.String(150))

# LoginManager
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'  # Nome da função de visualização que lida com logins


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

@app.route('/')
def home():
    if current_user.is_authenticated:
        return redirect(url_for('dashboard'))
    return redirect(url_for('login'))

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = User.query.filter_by(username=username).first()

        if user and check_password_hash(user.password, password):
            login_user(user)
            return redirect(url_for('dashboard'))

        return 'Invalid username or password'
    return render_template('login.html')

@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

@app.route('/dashboard')
@login_required
def dashboard():
    if current_user.is_admin:
        keys_with_users = db.session.query(Key, User.username).join(User).order_by(User.username).all()
        
        keys_by_user = {}
        for key, username in keys_with_users:
            if username not in keys_by_user:
                keys_by_user[username] = []
            keys_by_user[username].append(key)

        return render_template('admin_dashboard.html', keys_by_user=keys_by_user)
    else:
        # Para um usuário regular, mostre apenas suas chaves
        user_keys = Key.query.filter_by(user_id=current_user.id).all()
        return render_template('user_dashboard.html', keys=user_keys)



@app.route('/change_password', methods=['POST'])
@login_required
def change_password():
    current_password = request.form['current_password']
    new_password = request.form['new_password']
    new_password2 = request.form['new_password2']

    user = User.query.filter_by(id=current_user.id).first()

    if not user or not check_password_hash(user.password, current_password):
        return 'Senha atual incorreta'

    if new_password != new_password2:
        return 'As novas senhas não coincidem'

    user.password = generate_password_hash(new_password, method='pbkdf2:sha256')
    db.session.commit()

    return redirect(url_for('dashboard'))

    
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        admin_key = request.form['admin_key']
        if admin_key != current_app.config['SECRET_KEY']:
            flash('Chave de administrador inválida!', 'danger')
            return redirect(url_for('register'))

        username = request.form['username']
        hashed_password = generate_password_hash(request.form['password'])

        new_user = User(username=username, password=hashed_password)
        db.session.add(new_user)
        db.session.commit()

        flash('Usuário registrado com sucesso!', 'success')
        return redirect(url_for('login'))
    return render_template('register.html')
    

def desembaralhar_string(str):
    deslocamento1 = 3
    deslocamento2 = 2
    desembaralhado = ""
    for i, char in enumerate(str, start=1):
        if i <= 10:
            desembaralhadoChar = chr(ord(char) - deslocamento1)
        else:
            desembaralhadoChar = chr(ord(char) - deslocamento2)
        desembaralhado += desembaralhadoChar
    return desembaralhado
    
def embaralhar_string(str):
    deslocamento3 = 4
    deslocamento4 = 7
    embaralhado = ""
    for i, char in enumerate(str, start=1):
        if i <= 10:
            embaralhadoChar = chr(ord(char) + deslocamento3)
        else:
            embaralhadoChar = chr(ord(char) + deslocamento4)
        embaralhado += embaralhadoChar
    return embaralhado

@app.route('/generate_key', methods=['GET', 'POST'])
@login_required
def generate_key():
    if request.method == 'POST':
        contrachave = request.form['contrachave']
        cliente = request.form['cliente']

        # Primeiro, desembaralhar a contrachave
        contrachave_desembaralhada = desembaralhar_string(contrachave)

        # Em seguida, embaralhar a string desembaralhada
        chave = embaralhar_string(contrachave_desembaralhada)

        data_hora = datetime.now()

        # Salvar no banco de dados (ajuste conforme seu modelo de dados)
        nova_chave = Key(key_value=chave, user_id=current_user.id, contrachave=contrachave, data_hora=data_hora, cliente=cliente)
        db.session.add(nova_chave)
        db.session.commit()

        return redirect(url_for('dashboard'))
    else:
        # Substitua 'seu_template.html' pelo nome do arquivo de template real
        return render_template('generate_key.html')
  

@app.route('/download_chave/<int:key_id>')
@login_required
def download_chave(key_id):
    key = Key.query.get_or_404(key_id)
    return Response(
        key.key_value,
        mimetype="text/plain",
        headers={"Content-disposition": f"attachment; filename=chave_{key_id}.txt"}
    )



if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True)

