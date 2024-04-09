import 'package:cour_de_comptes/consts/colors.dart';
import 'package:flutter/material.dart';

class ActiviteScreen extends StatelessWidget {
  const ActiviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        title: const Text(
          'Activités',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _activity(
              title: "La rédaction des rapports",
              description:
                  "Les constatations, observations et recommandations formulées par la Cour des comptes à la suite de ses contrôles sur la gestion d’un service, d’une collectivité ou d’un organisme publics sont coulées dans des rapports par lesquels celle-ci informe les autorités compétentes des irrégularités éventuelles ou des fautes de gestion qu’elle a pu relever au cours de l’examen des comptes de l’Etat. Les rapports de la Cour des comptes rendent ainsi compte des redressements et des améliorations significatives de la gestion obtenus à la suite de ses contrôles. Pour la Cour, publier ou rendre publics des rapports destinés au Parlement signifie qu’elle juge opportun, soit de prendre à témoin l’opinion pour confronter l’impact et l’efficacité de ses observations, soit de permettre aux citoyens de s’informer et de contribuer ainsi à la transparence de l’action publique.",
            ),
            _activity(
              title: "La promulgation des arrêts",
              description:
                  "Dans le cadre du contrôle juridictionnel, la Cour des comptes dispose d’un pouvoir d’injonction pour obliger les ordonnateurs et les comptables à opérer les redressements utiles et d’un pouvoir de sanction qui lui permet d’infliger des amendes. La Cour des comptes vérifie, instruit et juge les comptes des services de l’Etat Central, des provinces et des entités territoriales décentralisées ainsi que ceux des établissements publics dotés d’un comptable public. La Cour juge les comptes des comptables publics ; elle vérifie la régularité des recettes et des dépenses. Elle donne décharge au comptable si les comptes sont réguliers (arrêt de quitus) ou elle le met en débet si des recettes ont été perdues ou si des dépenses ont été irrégulièrement effectuées (arrêt de débet). La Cour juge les comptes des personnes déclarées comptables de fait, c’est-à-dire celles qui ont usurpé les fonctions de comptable public attitré. En matière de discipline budgétaire et financière, la Cour relève et sanctionne toute infraction à la réglementation relative à l’exécution des opérations de recettes et des dépenses publiques qui seraient commises par tout fonctionnaire ou agent de l’Etat, des Provinces et des Entités Territoriales Décentralisées, tout responsable ou agent des sociétés commerciales d’Etat et établissements publics soumis à son contrôle, auteur d’une faute de gestion.",
            ),
            _activity(
              title: "Relations de la cour des comptes de la République Démocratique du Congo avec l’extérieur.",
              description:"Etant une Institution supérieure de contrôle des finances et biens publics, la Cour des comptes de la République Démocratique du Congo adhère à plusieurs organisations internationales et régionales pour se conformer aux normes de vérification ou de contrôle. Ainsi, la Cour des comptes paye ses cotisations annuelles pour participer aux activités des organisations internationales.",
            ),
          ],
        ),
      ),
    );
  }

  _activity({
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
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
          Divider(),
        ],
      ),
    );
  }
}
