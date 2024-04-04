import 'package:flutter/material.dart';

class LoginPresenter {
  Widget mountLogo() {
    AssetImage assetImage = const AssetImage('assets/logo.png');
    Image image = Image(image: assetImage);
    return image;
  }

  void navigateToLogin(String usuario, String senha, BuildContext context) {
    print(usuario);
    if (usuario == 'victor' && senha == '1234') {
      Navigator.pushNamed(context, '/home');
    }
  }
}
