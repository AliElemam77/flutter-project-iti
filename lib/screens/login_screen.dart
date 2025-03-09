import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  final bool isVisiable = false;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
GlobalKey formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            centerTitle: true,
            title: Text('Login Page', style: TextStyle(color: Colors.white)),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                spacing: 30,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'sign in',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                    controller: emailController,
                    icon: Icons.email,
                    label: 'Email',
                    hint: 'Enter your email',
                  ),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    controller: passwordController,
                    icon: Icons.lock,
                    label: 'Password',
                    hint: 'Enter your password',
                    isPassword: true,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown,
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.brown),
                      ),
                      onPressed: () {
                        print('Email: ${emailController.text}');
                        print('Password: ${passwordController.text}');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final IconData? icon;
  final String label;
  final String hint;
  final bool isPassword;
  bool isVisiable;
  TextEditingController controller = TextEditingController();
  String? Function(String?)? validator;
  CustomTextField({
    super.key,
    this.icon,
    this.label = '',
    this.hint = '',
    this.isPassword = false,
    this.isVisiable = false,
    required this.controller,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.isPassword ? passwordController : emailController,
      obscureText: widget.isPassword && !widget.isVisiable,
      decoration: InputDecoration(
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  icon: Icon(
                    widget.isVisiable ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isVisiable = !widget.isVisiable;
                    });
                  },
                )
                : null,
        prefixIcon: Icon(widget.icon),
        labelText: widget.label,
        hintText: widget.hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
