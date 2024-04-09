import 'package:cour_de_comptes/consts/colors.dart';
import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:flutter/material.dart';

class ActiviteContainer extends StatelessWidget {
  final String title;
  final String content;
  const ActiviteContainer(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize(context).width / 1.1,
      height: screenSize(context).height / 2.5,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage("assets/activiteBg.webp"),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
          )
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    // "RAPPORT GENERAL SUR LE CONTRÔLE DE L’EXECUTION DE LA LOI DE FINANCES N°21/026 DU 31 DECEMBRE 2021 EN VUE DE LA REDDITION DES COMPTES DU BUDGET DU POUVOIR CENTRAL POUR L’EXERCICE 2022",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Les constatations, observations et recommandations formulées par la Cour des comptes à la suite de ses contrôles sur la gestion d’un service, d’une collectivité ou d’un organisme publics…",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lire la suite...",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
