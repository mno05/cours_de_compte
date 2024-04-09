import 'package:cour_de_comptes/consts/screensConsts.dart';
import 'package:cour_de_comptes/screens/home/activite.dart';
import 'package:cour_de_comptes/screens/widgets/circleAvatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            child: Column(
              children: [
                CustCircleAvatar(
                  raduis: screenSize(context).width * .2,
                  pathImg:
                      "https://img.freepik.com/photos-gratuite/homme-africain-pointant-vers-avant_231208-5501.jpg?t=st=1712697149~exp=1712700749~hmac=1bc69c554a2401fec229df505ce203f111f256c6049d95f8d9ac073ff644b2c9&w=996",
                ),
                Text(
                  "Moïse NDJADI",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Acceuil",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              "A propos de nous",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.work_outlined),
            title: Text(
              "Activité",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () => Get.to(() => const ActiviteScreen()),
          ),
          ListTile(
            leading: Icon(Icons.newspaper_rounded),
            title: Text(
              "Actualités",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text(
              "Publication",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.markunread_mailbox_rounded),
            title: Text(
              "Mediatheque",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(
              "Contact",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
