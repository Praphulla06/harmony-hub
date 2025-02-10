import 'package:flutter/material.dart';
import 'package:harmony_hub/core/widgets/my_drawer.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text("Notes"),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: Center(
        child: Text("Note Page", style: Theme.of(context).textTheme.bodyLarge),
      ),
      drawer: MyDrawer(),
    );
  }
}
