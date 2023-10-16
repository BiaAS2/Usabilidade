import 'package:flutter/material.dart';
import '../telaInicial/telaInicial.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Login'),
        backgroundColor: Color.fromARGB(255, 116, 36, 246),
      ),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Informe o seu nome:'),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: nomeController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.account_box),
                  suffixIcon: IconButton(
                    onPressed: () => nomeController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Nome',
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 30), // Adicionando margem acima do widget Text
                child: const Text('Informe o seu e-mail:'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  icon: const Icon(Icons.email),
                  suffixIcon: IconButton(
                    onPressed: () => emailController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 30), // Adicionando margem acima do widget Text
                child: const Text('Informe a sua senha:'),
              ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: senhaController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  icon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            
            const SizedBox(height: 16.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SegundaTela(nomeController.text)),
                    ),
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 116, 36, 246),
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}