import 'package:cour_de_comptes/consts/colors.dart';
import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:cour_de_comptes/screens/widgets/activiteContenaire.dart';
import 'package:cour_de_comptes/screens/widgets/appDrawer.dart';
import 'package:cour_de_comptes/screens/widgets/postContenaire.dart';
import 'package:cour_de_comptes/screens/widgets/presidentResume.dart';
import 'package:cour_de_comptes/screens/widgets/publication.dart';
import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        title: const Text(
          'Cour des comptes',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: SizedBox(
          // height: screenSize(context).height,
          width: screenSize(context).width,
          child: Column(
            children: [
              PresidantResume(),
              _publicatiionRecentes(),
              const SizedBox(height: 50),
              _nosActivite(),
              const SizedBox(height: 50),
              _news(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  _publicatiionRecentes() {
    return const Column(
      children: [
        Text(
          "Publications récentes",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PublicationContainer(
                title:
                    "RAPPORT GENERAL SUR LE CONTRÔLE DE L’EXECUTION DE LA LOI DE FINANCES N°21/026 DU 31 DECEMBRE 2021 EN VUE DE LA REDDITION DES COMPTES DU BUDGET DU POUVOIR CENTRAL POUR L’EXERCICE 2022",
                date: "24/Mar",
              ),
              PublicationContainer(
                title:
                    "RAPPORT D’AUDIT DE LA GESTION DE LA PRISE EN CHARGE DES SOINS MEDICAUX A L’ETRANGER EXERCICES 2020, 2021 et 2022",
                date: "27/Mar",
              ),
            ],
          ),
        ),
      ],
    );
  }

  _nosActivite() {
    return const Column(
      children: [
        Text(
          "NOS ACTIVITES",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ActiviteContainer(
                  title: "Rédaction des rapports",
                  content:
                      "Dans le cadre du contrôle juridictionnel, la Cour des comptes dispose d’un pouvoir d’injonction pour obliger les ordonnateurs et les comptables à opérer les redressements utiles et d’un pouvoir de sanction qui lui permet d’infliger des amendes."),
              ActiviteContainer(
                title: "La promulgation des arrêts",
                content:
                    "Les constatations, observations et recommandations formulées par la Cour des comptes à la suite de ses contrôles sur la gestion d’un service, d’une collectivité ou d’un organisme publics…",
              ),
              ActiviteContainer(
                  title:
                      "Relations de la cour des comptes de la République Démocratique du Congo avec l'éxtérieur",
                  content:
                      "Démocratique du Congo avec l’extérieur. Etant une Institution supérieure de contrôle des finances et biens publics, la Cour des comptes de la République Démocratique du Congo adhère à plusieurs organisations internationales et régionales pour se conformer aux normes de vérification ou de contrôle. Ainsi, la Cour des comptes paye ses cotisations…"),
            ],
          ),
        ),
      ],
    );
  }

  _news() {
    return Column(
      children: [
        const Text(
          "NOUVELLES ACTUALITÉS",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        PostContainer(),
      ],
    );
  }
}
