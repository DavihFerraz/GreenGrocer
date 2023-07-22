import 'package:flutter/material.dart';
import 'package:green_grocer/src/pages/widgets/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do usuário',
        ),
        actions: const [
          Icon(
            Icons.logout,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: const [
            CustomTextField(
              icon: Icons.mail,
              label: 'Email',
            ),
            CustomTextField(
              icon: Icons.person,
              label: 'Nome',
            ),
            CustomTextField(
              icon: Icons.phone,
              label: 'Celular',
            ),
            CustomTextField(
              icon: Icons.file_copy,
              label: 'CPF',
              isSecret: true,
            ),
          ],
        ),
      ),
    );
  }
}
