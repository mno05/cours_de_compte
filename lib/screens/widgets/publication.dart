import 'package:cour_de_comptes/consts/colors.dart';
import 'package:cour_de_comptes/consts/imagePath.dart';
import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:flutter/material.dart';

class PublicationContainer extends StatelessWidget {
  final String date;
  final String title;
  const PublicationContainer(
      {super.key, required this.date, required this.title});

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
        image: DecorationImage(
          image: AssetImage(publicationBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
          )
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.article,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    // "RAPPORT GENERAL SUR LE CONTRÔLE DE L’EXECUTION DE LA LOI DE FINANCES N°21/026 DU 31 DECEMBRE 2021 EN VUE DE LA REDDITION DES COMPTES DU BUDGET DU POUVOIR CENTRAL POUR L’EXERCICE 2022",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize(context) * .14,
                    ),
                    textAlign: TextAlign.center,
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
