import 'package:cour_de_comptes/consts/colors.dart';
import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:flutter/material.dart';

class PresidantResume extends StatelessWidget {
  const PresidantResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: screenSize(context).height,
      // height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Premier Président, Jimmy MUNGANGA NGWAKA",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: screenSize(context).height / 2,
              width: screenSize(context).width / 1.1,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/President.jpg",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            Text(
              "Mot du Prémier Président",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "La mission centrale de la Cour des comptes, Institution Supérieure de Contrôle (ISC) de la République Démocratique du Congo, comme le prescrit l’article 180 de la Constitution est « le contrôle de gestion des finances de l’Etat, des biens publics ainsi que les comptes des provinces, des entités territoriales décentralisées ainsi que des organismes publics »…",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Lire la suite...",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
             const Row(
              children: [
                Text(
                  "Mission",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
           const Text(
              "La Cour des comptes de la République Démocratique du Congo est l’Institution Supérieure de Contrôle des finances publique de la République Démocratique du Congo. Elle a pour mission d’effectuer, de manière indépendante, un contrôle externe à posteriori des finances de l’Etat et de ses démembrements ainsi que des organismes, entreprises publiques et autres entités bénéficiant du concours financier de l’Etat.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Lire la suite...",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
