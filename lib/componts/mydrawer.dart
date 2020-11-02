import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("جمال أحمد عبد الحكم"),
            accountEmail: Text("01142399094"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.face),
              backgroundColor: Colors.white,
              foregroundColor: Colors.amber,
            ),
            decoration: BoxDecoration(color: Colors.amber, image: DecorationImage(image: AssetImage("images/home-banner.jpg"), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text(
              "الصفحة الرئيسية",
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('Home');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.perm_data_setting),
            title: Text("المنتجات"),
            onTap: () {
              Navigator.of(context).pushNamed('Category');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("الاعدادات"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("الخروج"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
