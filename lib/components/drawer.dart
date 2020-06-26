import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            accountName: Text("username"),
            accountEmail: Text("user@email.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person,
              size: 30,),
            ),
          ),
          ListTile(
            title:Text("Other Products"),
            onTap: () {
            }
          ),
          ListTile(
            title:Text("About Us"),
            onTap: () {
            }
          ),
          ListTile(
            title:Text("Feedback"),
            onTap: () => {}
          ),
          ListTile(
            title:Text("24x7 Helpline"),
            onTap: () => {}
          ),
          ListTile(
            title:Text("Contact Us"),
            onTap: () => {}
          )
        ],
      ),
    );
  }
}
