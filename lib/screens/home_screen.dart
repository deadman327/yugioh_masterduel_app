import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh_masterduel_app/services/auth_services.dart';

import 'package:yugioh_masterduel_app/theme/app_theme.dart';
import 'package:yugioh_masterduel_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  //ruta estaica
  static String routerName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //key del scaffold para el drawer
    final authService = Provider.of<AuthService>(context, listen: false);
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text('Home'),
        ),
        drawer: const SideMenu(),
        body: HomeBackground(
          child: Column(children: [
            SizedBox(
              height: size.height * .35,
            ),
            CardContainer(
                child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "The new duel experience",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    child: Column(children: [
                  const Text(
                    'A beginers and returning players guide',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 5),
                        primary: AppTheme.primary,
                      ),
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child: const Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ))
                ]))
              ],
            )),
            const SizedBox(
              height: 30,
            ),
          ]),
        ));
  }
}
