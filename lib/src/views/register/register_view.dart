import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Register',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: controller.nameController,
                decoration: InputDecoration(
                  hint: CustomText('Name'),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  hint: CustomText('Email'),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              TextField(
                controller: controller.phoneController,
                decoration: const InputDecoration(
                  hint: CustomText('Phone'),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              TextField(
                controller: controller.passwordController,
                decoration: const InputDecoration(
                  hint: CustomText('Password'),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  controller.register();
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
