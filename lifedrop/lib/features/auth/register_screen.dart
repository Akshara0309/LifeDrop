import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_dropdown.dart';
import '../../core/widgets/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? selectedBloodGroup;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void register() {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        selectedBloodGroup == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all the fields'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Registration button pressed'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),

              const Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Join LifeDrop and help save lives',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),

              const SizedBox(height: 30),

              // Name
              AppTextField(
                label: 'Name',
                hint: 'Enter your name',
                controller: nameController,
                prefixIcon: Icons.person_outline,
              ),

              const SizedBox(height: 18),

              // Email
              AppTextField(
                label: 'Email',
                hint: 'Enter your email',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
              ),

              const SizedBox(height: 18),

              // Phone
              AppTextField(
                label: 'Phone',
                hint: 'Enter your phone number',
                controller: phoneController,
                keyboardType: TextInputType.phone,
                prefixIcon: Icons.phone_outlined,
              ),

              const SizedBox(height: 18),

              // Blood Group
              AppDropdown(
                label: 'Blood Group',
                value: selectedBloodGroup,
                items: AppConstants.bloodGroups,
                onChanged: (value) {
                  setState(() {
                    selectedBloodGroup = value;
                  });
                },
              ),

              const SizedBox(height: 18),

              // Password
              AppTextField(
                label: 'Password',
                hint: 'Create a password',
                controller: passwordController,
                obscureText: true,
                prefixIcon: Icons.lock_outline,
              ),

              const SizedBox(height: 30),

              // Register button
              AppButton(
                text: 'Register',
                icon: Icons.person_add_outlined,
                onPressed: register,
              ),

              const SizedBox(height: 20),

              // Back to Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}