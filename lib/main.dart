import 'package:firebase_core/firebase_core.dart';
import 'package:library_app/src/login/register.dart';
import 'package:library_app/src/models/notifiers/theme_notifier.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'package:Provider/provider.dart';
import 'package:library_app/src/models/notifiers/book_notifier.dart';
import 'package:library_app/src/screens/home_screen.dart';
import 'package:library_app/src/login/login.dart';

import 'package:library_app/src/theme/theme.dart' as libraryTheme;
import 'package:provider/provider.dart';
import 'package:library_app/src/login/SIgnInScreen.dart';
import 'package:library_app/src/login/firstpage.dart';
// import 'firstpage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(library_app());
}

class library_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = ThemeNotifier();
    final bookNotifier = BookNotifier();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => themeNotifier),
        ChangeNotifierProvider(create: (_) => bookNotifier),
      ],
      child: MaterialAppWithTheme(),
    );
  }
}

// class MaterialAppWithTheme extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeNotifier = Provider.of<ThemeNotifier>(context);

//     return MaterialApp(
//       title: 'library_app',
//       darkTheme: libraryTheme.Theme.darkTheme,
//       theme: themeNotifier.darkModeEnabled
//           ? libraryTheme.Theme.darkTheme
//           : libraryTheme.Theme.lightTheme,
//       home: MyLogin(
//         routes: {
//       'register': (context) => MyRegister(),
//       'login': (context) => MyLogin(),
//     },)
//     );
//   }
// }

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'library_app',
      darkTheme: libraryTheme.Theme.darkTheme,
      theme: themeNotifier.darkModeEnabled
          ? libraryTheme.Theme.darkTheme
          : libraryTheme.Theme.lightTheme,
      home: SignInScreen(),
      // home: MyApp(),
      // home: HomeScreen(),
      // routes: {"/admin": (context) => SignInScreen()},
    );
  }
}
