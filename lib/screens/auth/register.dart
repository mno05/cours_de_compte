import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:cour_de_comptes/screens/auth/login.dart';
import 'package:cour_de_comptes/screens/widgets/CustomButton.dart';
import 'package:cour_de_comptes/screens/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize(context).height,
          width: screenSize(context).width,
          padding: const EdgeInsets.all(12),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Inscription",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Créez un compte pour avoir accès à l'application",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Entrez votre Prenom",
                text: "Prenom",
              ),
              CustomTextField(
                hintText: "Entrez votre nom",
                text: "Nom",
              ),
              CustomTextField(
                hintText: "Entrez votre adresse mail",
                text: "Email",
              ),
              CustomTextField(
                hintText: "Entrez votre mot de passe",
                text: "Mot de passe",
                isPassword: true,
              ),
              SizedBox(height: 20),
              CustomButton(text: "Inscription"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("J'ai déjà un compte?"),
                TextButton(
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => Get.to(() => const Login()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
