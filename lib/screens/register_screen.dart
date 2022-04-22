import 'package:flutter/material.dart';
import 'package:yugioh_masterduel_app/interfaces/input_decorations.dart';
import 'package:yugioh_masterduel_app/providers/login_form_provider.dart';
import 'package:yugioh_masterduel_app/services/services.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  static String routerName = 'register';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text('Registrarse',
                        style: Theme.of(context).textTheme.headline4),
                    SizedBox(height: 30),
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProvide(),
                      child: _loginForm(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'login'),
                child: Text(
                  '¿Ya tienes una cuenta?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class _loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvide>(context);

    return Container(
      child: Form(
        // TODO: mantener la referencia al KEY
        key: loginForm.formKey,

        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'example@gmail.com',
                labelText: 'Email',
                prefixIcon: Icons.alternate_email_sharp,
              ),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                RegExp regExp = new RegExp(pattern);

                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'Ingrese un correo valido';
              },
            ),
            SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: '******',
                labelText: 'Password',
                prefixIcon: Icons.lock_clock_outlined,
              ),
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                return (value != null && value.length >= 6)
                    ? null
                    : 'La contraseña debe ser mayor a 6 caracteres';
              },
            ),
            SizedBox(height: 30),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.blueAccent,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  'Crear cuenta',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () async {
                //TODO: Login FOrm
                final authService =
                    Provider.of<AuthService>(context, listen: false);

                if (!loginForm.isValidForm()) return;

                final String? errorMessage = await authService.createUser(
                    loginForm.email, loginForm.password);

                if (errorMessage == null) {
                  Navigator.pushReplacementNamed(context, 'login');
                } else {
                  // Error
                  print(errorMessage);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
