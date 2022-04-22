import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_masterduel_app/screens/screens.dart';
import 'package:yugioh_masterduel_app/services/services.dart';

class CheckAuthScreen extends StatelessWidget {
  static String routerName = 'cheking';

  const CheckAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.readToken(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (!snapshot.hasData) return Text('Espere');

            if (snapshot.data == '') {
              Future.microtask(() {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => LoginScreen(),
                        transitionDuration: Duration(seconds: 0)));

                // Navigator.of(context).pushReplacementNamed('home');
              });
            } else {
              Future.microtask(() {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => HomeScreen(),
                        transitionDuration: Duration(seconds: 0)));

                // Navigator.of(context).pushReplacementNamed('home');
              });
            }

            return Container();
          },
        ),
      ),
    );
  }
}
