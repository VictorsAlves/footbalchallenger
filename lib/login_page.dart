import 'package:flutter/material.dart';
import 'package:footbalchallenger/login_presenter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var presenter = LoginPresenter();
  var controllerUser = TextEditingController();
  var controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              presenter.mountLogo(),
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: controllerUser,
                decoration: const InputDecoration(
                  labelText: 'Login',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: controllerPassword,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () => presenter.navigateToLogin(
                    controllerUser.value.text,
                    controllerPassword.value.text,
                    context),
                child: const Text('login'),
              ),
              ElevatedButton(
                onPressed: () => presenter.navigateToLogin('', '', context),
                child: const Text('cadastrar'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
