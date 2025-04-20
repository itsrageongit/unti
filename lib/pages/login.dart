import 'package:flutter/material.dart';
import 'package:unti/pages/mainnav.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberMe = false;

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              Center(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Email Input
              TextField(
                focusNode: _emailFocusNode,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.grey[700]),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow[700]!,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password Input
              TextField(
                focusNode: _passwordFocusNode,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey[700]),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow[700]!,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      // toggle password visibility (optional feature)
                    },
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.yellow[700],
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  const Text('Remember Me'),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      // forgot password
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MainNav()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
