import 'package:cour_de_comptes/consts/imagePath.dart';
import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';

class PostContainer extends StatelessWidget {
  final onTap;
  PostContainer({
    super.key,
    this.onTap,
  });
  List<Info> infos = [
    Info(
        title:
            "Coopération USA-RDC: Les USA offrent de matériels informatiques à la Cour des comptes.",
        pathImage: info,
        content:
            "Les Etats Unis d’Amérique à travers son Ambassade à Kinshasa en République Démocratique du Congo"),
    Info(
        title:
            "Coopération USA-RDC: Les USA offrent de matériels informatiques à la Cour des comptes.",
        pathImage: publicationBg,
        content:
            "Les Etats Unis d’Amérique à travers son Ambassade à Kinshasa en République Démocratique du Congo"),
    Info(
        title:
            "Assister le gouvernement congolais à renforcer la gestion des recettes issues des ressources naturelles, tel",
        pathImage: info,
        content:
            "Les Etats Unis d’Amérique à travers son Ambassade à Kinshasa en République Démocratique du Congo"),
    Info(
        title:
            "LA DELEGATION CONJOINTE DU DEPARTEMENT DES FINANCES PUBLICS DU FMI ET DU CENTRE REGIONAL D’ASSISTANCE TECHNIQUE POUR L’AFRIQUE CENTRAL, AFRITAC-CENTRE EN VISITE DE TRAVAIL A LA COUR DES COMPTES.",
        pathImage: info,
        content:
            "Les Etats Unis d’Amérique à travers son Ambassade à Kinshasa en République Démocratique du Congo"),
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(4),
          // height: screenSize(context).height / 1.8,
          width: screenSize(context).width,
          child: Column(
            children: [
              Container(
                height: screenSize(context).height / 2,
                width: screenSize(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlutterCarousel.builder(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    disableCenter: true,
                    autoPlay: true,
                    // enlargeCenterPage: true,
                  ),
                  itemCount: infos.length,
                  itemBuilder:
                      (BuildContext context, int i, int pageViewIndex) =>
                          Container(
                    height: screenSize(context).height / 2.5,
                    width: screenSize(context).width,
                    // color: colors[itemIndex],

                    child: _infoContainer(context, infos[i]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _infoContainer(context, info) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            info.title,
            style: TextStyle(
              fontSize: fontSize(context) * .14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            flex: 8,
            child: Image.asset(info.pathImage, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              info.content,
              style: TextStyle(
                fontSize: fontSize(context) * .13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Info {
  final String title;
  final String pathImage;
  final String content;
  Info({
    required this.title,
    required this.pathImage,
    required this.content,
  });
}
