import 'package:flutter/material.dart';
import 'package:harmony_hub/core/widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text("Home"),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: Center(
        child: Text("Home Page", style: Theme.of(context).textTheme.bodyLarge),
      ),
      drawer: MyDrawer(),
    );
  }
}
