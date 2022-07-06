import 'package:flutter/material.dart';
import 'package:pokemon/themes.dart';

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
            Divider(color: drawerColor, thickness: 3),
            sizedBox10,
            customListTile(
              text: Text(
                '1 Gen.',
                style: styleTextMenu,
              ),
              icon: Icons.auto_awesome,
              // onClicked: () => selectedGen(context, 0)
            ),
            sizedBox10,
            Divider(color: themeColor, thickness: 1),
            sizedBox10,
            customListTile(
              text: Text(
                'Custom',
                style: styleTextMenu,
              ),
              icon: Icons.auto_fix_high,
              // onClicked: () => selectedGen(context, 1)
            ),
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

// void selectedGen(BuildContext context, int index) {
//   switch (index) {
//     case 0:
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => FirstGenScreen(),
//       ));
//       break;
//     case 1:
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => CustomGenScreen(),
//       ));
//   }
// }
