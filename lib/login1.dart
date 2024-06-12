import 'package:edusign/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      if (_formKey.currentState!.validate()) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Navigate to the next screen upon successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                list(), // Replace with your next screen widget
          ),
        );
      }
    } catch (e) {
      // Handle login errors (e.g., invalid email/password)
      print("Login failed: $e");
      // You can display an error message to the user here.
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white.withOpacity(0.4), Colors.indigo],
              ),
            ),
          ),

          // Content
          Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/img_93.png", // Add your image asset here
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          // Validation logic

                          if (value == null || value.isEmpty) {
                            return "Email is required";
                          } else if (!RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                              .hasMatch(value)) {
                            return "Enter a valid email address";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        validator: (value) {
                          // Validation logic
                          if (value == null || value.isEmpty) {
                            return "Password is required";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          } else if (value.length >= 6) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    list(), // Replace with your next screen widget
                              ),
                            );
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: _signInWithEmailAndPassword,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text("Login"),
                      ),
                      SizedBox(height: 20.0),
                      // Sign in with Google button
                      ElevatedButton.icon(
                        onPressed: () {
                          // Implement sign in with Google logic
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        icon: Icon(Icons.g_mobiledata),
                        label: Text("Sign In with Google"),
                      ),
                      SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the registration page when the link is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sign()),
                          );
                        },
                        child: Text(
                          "Create an Account",
                          style: TextStyle(
                            color: Colors.blue[400],
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
