import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/routes.dart';
import 'package:instagram_clone/screens/login/login.dart';

void main() {
  runApp(const InstagramAppClone());
}

class InstagramAppClone extends StatelessWidget {
  const InstagramAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: kAppBarBackgroundColor,
          iconTheme: IconThemeData(color: kIconColor),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kAppBarBackgroundColor,
          selectedIconTheme: IconThemeData(
            color: kIconColor,
            size: 30.0,
          ),
          unselectedIconTheme: IconThemeData(
            color: kIconColor,
            size: 30.0,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        iconTheme: IconThemeData(color: kIconColor),
        scaffoldBackgroundColor: kBackgroundColor,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(kBlueColor),
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginScreen.routeName,
      home: LoginScreen(),
      routes: routes,
    );
  }
}
