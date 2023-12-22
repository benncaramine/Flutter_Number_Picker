import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(10, 41, 107, 1.0),
        child: ListView(
          children: [
            drawerHeader(),
            itemMenu(
                titre: "Home",
                icon: Icons.home,
                goto: () => Navigator.of(context).popAndPushNamed("/")),
            itemMenu(
                titre: "ReLu",
                icon: Icons.tune,
                goto: () => Navigator.of(context).popAndPushNamed("page1")),
            itemMenu(
                titre: "Tanh",
                icon: Icons.settings_input_composite,
                goto: () => Navigator.of(context).popAndPushNamed("page2")),
            itemMenu(
                titre: "Sigmoid",
                icon: Icons.account_balance_wallet,
                goto: () => Navigator.of(context).popAndPushNamed("page3")),
          ],
        ),
      ),
    );
  }
}

//---------------DrawerHeader-------------
DrawerHeader drawerHeader() {
  return DrawerHeader(
      decoration: BoxDecoration(color: Color.fromRGBO(
          5, 19, 84, 1.0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/prof.jpg"),
              radius: 60,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Deep Learning",
              style: TextStyle(fontSize: 18, color: Colors.yellow),
            ),
          ),
          Align(
            alignment: Alignment(1, 0.4),
            child: Text(
              "Activation functions",
              style: TextStyle(fontSize: 15, color: Colors.yellow),
            ),
          )
        ],
      ));
}

//-----------------items---------------
Container itemMenu(
    {required String titre, required IconData icon, VoidCallback? goto}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: Colors.yellowAccent,
      ),
      title: Text(
        titre,
        style: TextStyle(color: Colors.orange, fontSize: 18),
      ),
      onTap: goto,
    ),
  );
}