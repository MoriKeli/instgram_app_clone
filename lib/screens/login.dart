import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 80.0, bottom: 50.0),
            child: const Image(
              image: AssetImage("images/logo.png"),
              height: 70.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Phone number, username or email",
                labelStyle: const TextStyle(fontSize: 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            // decoration: OutlineInputBorder(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: const TextStyle(fontSize: 18.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                fillColor: Colors.grey[200],
                filled: true,
              ),
              obscureText: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
                padding: WidgetStateProperty.all(const EdgeInsets.all(10.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/homescreen');
              },
              child: const Text("login", style: TextStyle(fontSize: 20.0)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, right: 10.0, bottom: 55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Forgot password?", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline))],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    height: 1,
                    color: Colors.black87,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text("OR", style: TextStyle(fontWeight: FontWeight.w600)),
                ),
                Flexible(
                  child: Container(
                    height: 1,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("images/fb-icon.png"),
                  height: 20.0,
                ),
                Text(" Continue as "),
                Text("test user", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue, decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? ", textAlign: TextAlign.center),
              Text("Sign up", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline))
            ],
          ),
        ),
      ),
    );
  }
}
