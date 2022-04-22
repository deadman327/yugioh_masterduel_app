import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yugioh_masterduel_app/theme/app_theme.dart';
import 'package:yugioh_masterduel_app/router/app_routes.dart';
import 'package:yugioh_masterduel_app/screens/screens.dart';

import 'providers/provider_carts.dart';
import 'services/services.dart';

void main() => runApp(AppState());

// APLICACIÓN REAL
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Genera el apartado para utilizar multiples providers
    return MultiProvider(providers: [
      // Notifica a los provders anteriores lo que esta pasando
      ChangeNotifierProvider(
        create: (_) => AllCartsProvider(),
        lazy: false,
      ),
      ChangeNotifierProvider(create: (_) => AuthService(), lazy: false),
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'OpenSans',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: CheckAuthScreen.routerName,
      routes: {
        // Pantallas de Usuarios
        LoginScreen.routerName: (_) => const LoginScreen(),
        RegisterScreen.routerName: (_) => const RegisterScreen(),
        CheckAuthScreen.routerName: (_) => const CheckAuthScreen(),
        // Aplicación interna
        HomeScreen.routerName: (_) => const HomeScreen(),
        DetailsScreen.routerName: (_) => DetailsScreen(),
        ListViewBuilderScreen.routerName: (_) => const ListViewBuilderScreen(),
        TipsScreenScreen.routerName: (_) => const TipsScreenScreen(),
        StarterGuideScreen.routerName: (_) => const StarterGuideScreen(),
        //
      },
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
