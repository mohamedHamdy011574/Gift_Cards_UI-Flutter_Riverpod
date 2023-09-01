// import 'package:firstapp/Pages/appbar.dart';
// import 'package:firstapp/Pages/appbar2.dart';
// import 'package:firstapp/Pages/counter_app.dart';
// import 'package:firstapp/Pages/endquizpage.dart';
// import 'package:firstapp/Pages/home_page.dart';
// import 'package:firstapp/Pages/quiz_app.dart';
// import 'package:flutter/material.dart';
// import 'Pages/welcome_page.dart';
// import 'Pages/sign_up.dart';
// import 'Pages/login_page.dart';
// // import 'Pages/quiz_app.dart';
// // import 'Pages/counter_app.dart';
// // import 'Pages/home_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         "Signup": (context) => const SignupPage(),
//         "Loginpage": (context) => const LoginPage(),
//         "Homepage": (context) => const Homepage(),
//         "Counterapp": (context) => const Counterapp(),
//         "Quizapp": (context) => const Quizapp(),
//         "EndQuizPage": (context) => const endquizeapp(),
//         "AppBar": (context) => const Menubar(),
//         "AppBar2": (context) => const Menubar2()
//       },
//       home: const Welcomepage(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'gen/colors.gen.dart';
import 'gen/fonts.gen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: CardApp()));
}

class CardApp extends StatelessWidget {
  const CardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Card App UI',
      theme: ThemeData(
        fontFamily: FontFamily.merriweather,
        primarySwatch: ColorName.primarySwatch,
      ),
      home: const HomeScreen(),
    );
  }
}
