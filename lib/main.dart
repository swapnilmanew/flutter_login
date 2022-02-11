import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Login App",
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var email = "";
  var password = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Flutter Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 26.0,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "User Email",
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            TextField(
              obscureText: true,
              controller: _passwordController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            ElevatedButton(
              onPressed: () {
                email = _emailController.text;
                password = _passwordController.text;
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: Text('User Details'),
                          content: Text("User Email : " +
                              email +
                              "User Password : " +
                              password),
                        ));

                setState(() {});
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
