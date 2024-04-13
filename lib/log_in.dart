

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fotpv/MyHome.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<log_in> {
  // Declare variables for form fields
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void onPhone() {
    Navigator.pushNamed(context, '/phone');
    print("login");
  }
  void onFb() {
    Navigator.pushNamed(context, '/fauth');
    print("login");
  }

  // Login button handler with validation
  void _handleLogin() {
    // Replace with your authentication logic (e.g., API call)
    if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      // Simulate successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHome()),
      ); // Replace with your home screen route
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter username and password'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 224, 193, 193),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 193, 193),
        title: const Text('WellCome'),
        
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(20.0),
        child: Column(
          
          children: [
            
            
            const SizedBox(height: 110.0),
            const Text("Log in",
            style: TextStyle(
              fontSize: 24.0, // Change this value to adjust the font size
            ),),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password characters
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _handleLogin,
              child: const Text('Login'),
            ),
            const SizedBox(height: 20.0),
            const Text("or"),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: onPhone, // Reference the function without parentheses
              child: const Text('Log in with Otp'),
            ),
             const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: onFb, // Reference the function without parentheses
              child: const Text("FaceBook"),
            ),
            
          ],
        ),
      ),
    );
  }
}
