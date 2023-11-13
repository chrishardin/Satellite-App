import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  void _signUpWithEmail() {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      print(
          "Email: $_email, Password: $_password, Confirm Password: $_confirmPassword");
      print(
          "TODO: Here you would usually send the data to your backend or Firebase to create a new user account");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          // Use SingleChildScrollView to prevent overflow when the keyboard is visible
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) => _email = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                onSaved: (value) => _password = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: (value) {
                  if (value != _password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: _signUpWithEmail,
                child: Text('Sign Up'),
              ),
              // Optionally add social media sign-up buttons
              SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                onPressed: () {
                  print("TODO: Sign up with Google");
                },
              ),
              SignInButton(
                Buttons.Facebook,
                text: "Sign up with Facebook",
                onPressed: () {
                  print("TODO: Sign up with Facebook");
                },
              ),
              // Add more sign-up options here
            ],
          ),
        ),
      ),
    );
  }
}
