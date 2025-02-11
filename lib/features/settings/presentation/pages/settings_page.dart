import 'package:flutter/material.dart';
import 'package:harmony_hub/core/widgets/my_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text("Settings"),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: Center(
        child:
            Text("Settings Page", style: Theme.of(context).textTheme.bodyLarge),
      ),
      drawer: MyDrawer(),
    );
  }
}
