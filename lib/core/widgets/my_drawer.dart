import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:harmony_hub/core/state_management/theme/cubits/theme_cubit.dart';
import 'package:harmony_hub/core/themes/light_theme.dart';
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
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: DrawerHeader(child: Icon(Icons.hub)),
          ),
          MyDrawerTile(
              title: "H O M E",
              icon: Icons.home,
              onTap: () {
                // context.pop();
                context.go('/home');
              }),
          MyDrawerTile(
              title: "N O T E",
              icon: Icons.note,
              onTap: () {
                // context.pop();
                context.go('/notes');
              }),
          MyDrawerTile(
              title: "P L A N N E R",
              icon: Icons.calendar_month,
              onTap: () {
                // context.pop();
                context.go('/planner');
              }),
          MyDrawerTile(
              title: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                // context.pop();
                context.go('/settings');
              }),
          MyDrawerTile(
              title: "C H A N G E  T H E M E",
              icon: context.read<ThemeCubit>().themeData == lightTheme
                  ? Icons.sunny
                  : Icons.mode_night,
              onTap: () {
                context.read<ThemeCubit>().toggleTheme();
              }),
          const Spacer(),
          MyDrawerTile(
              title: "L O G O U T",
              icon: Icons.logout,
              onTap: () {
                // context.pop();
                context.go('/auth');
              }),
        ],
      ),
    ));
  }
}
