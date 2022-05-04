import 'package:flt1/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
            child: const Text("Aller sur les  détails "),
            onPressed: () {
              context.pushNamed('details');
            }),
      ),
    );
  }
}
