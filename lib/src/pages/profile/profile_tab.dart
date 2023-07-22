import 'package:flutter/material.dart';
import 'package:green_grocer/src/pages/widgets/custom_text_field.dart';
import 'package:green_grocer/src/config/app_data.dart' as appData;

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do usuário',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          //Email
          CustomTextField(
            initialValue: appData.user.email,
            icon: Icons.mail,
            label: 'Email',
            readOnly: true,
          ),
          //Nome
          CustomTextField(
            initialValue: appData.user.name,
            icon: Icons.person,
            label: 'Nome',
            readOnly: true,
          ),
          //Celular
          CustomTextField(
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: 'Celular',
            readOnly: true,
          ),
          //CPF
          CustomTextField(
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
            readOnly: true,
          ),

          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Atualizar senha '),
            ),
          ),
        ],
      ),
    );
  }
}
