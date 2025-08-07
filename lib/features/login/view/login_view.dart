import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loginSuccess = false;
  bool _isLoading = false;

  void _handleLogin() {
    setState(() {
      _isLoading = true;
      _loginSuccess = false;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
        if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
          _loginSuccess = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleLogin,
                  child: _isLoading 
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('Entrar'),
                ),
                if (_loginSuccess)
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Login salvo com sucesso!',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}