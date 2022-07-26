import 'package:flutter/material.dart';
import 'package:pokemon/themes.dart';

import '../main.dart';
import '../screen/custom_gen_screen.dart';
import '../screen/first_gen_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            sizedBox10,
            customListTile(
                text: Text(
                  'Home',
                  style: styleTextMenu,
                ),
                icon: Icons.home,
                onClicked: () => selectedGen(context, 0)),
            sizedBox10,
            Divider(color: drawerColor, thickness: 3),
            sizedBox10,
            customListTile(
                text: Text(
                  'first Gen.',
                  style: styleTextMenu,
                ),
                icon: Icons.auto_awesome,
                onClicked: () => selectedGen(context, 1)),
            sizedBox10,
            Divider(color: themeColor, thickness: 1),
            sizedBox10,
            customListTile(
                text: Text(
                  'Custom Gen.',
                  style: styleTextMenu,
                ),
                icon: Icons.auto_fix_high,
                onClicked: () => selectedGen(context, 2)),
            sizedBox10,
            Divider(color: drawerColor, thickness: 3),
            sizedBox10,
          ],
        ),
      ),
    );
  }
}

Widget customListTile({
  required Text text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  return ListTile(
    leading: Icon(
      icon,
      color: themeColor,
      size: 30,
    ),
    title: text,
    hoverColor: themeColor,
    onTap: onClicked,
  );
}

void selectedGen(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const FirstGenScreen(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const CustomGenScreen(),
      ));
  }
}
