import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harmony_hub/core/widgets/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: DrawerHeader(child: Icon(Icons.hub)),
            ),
            // const Divider(color: Colors.white,),
            MyDrawerTile(title: "H O M E", icon: Icons.home, onTap: () {
              context.pop();
              context.go('/');
            }),
            MyDrawerTile(title: "N O T E", icon: Icons.note, onTap: () {
              context.pop();
              context.go('/note');
            }),
            MyDrawerTile(title: "P L A N N E R", icon: Icons.calendar_month, onTap: () {
              context.pop();
              context.go('/planner');
            }),
            MyDrawerTile(title: "C H A N G E  T H E M E", icon: Icons.sunny, onTap: () {
              
            }),
            const Spacer(),
            MyDrawerTile(title: "L O G O U T", icon: Icons.logout, onTap: () {
              context.pop();
              context.go('/auth');
            }),
          ],
        ),
      )
    );
  }
}