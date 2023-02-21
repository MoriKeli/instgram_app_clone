import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              child: Text("login", style: TextStyle(fontSize: 20.0)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [Text("Forgot password?", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline))],
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
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Don't have an account? ", textAlign: TextAlign.center),
              Text("Sign up", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline))
            ],
          ),
        ),
      ),
    );
  }
}
