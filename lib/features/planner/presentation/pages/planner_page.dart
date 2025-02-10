import 'package:flutter/material.dart';
import 'package:harmony_hub/core/widgets/my_drawer.dart';

class PlannerPage extends StatelessWidget {
  const PlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text("Planner"),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: Center(
        child:
            Text("Planner Page", style: Theme.of(context).textTheme.bodyLarge),
      ),
      drawer: MyDrawer(),
    );
  }
}
