import 'package:flt1/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
            onPressed: () {
              context.pushNamed('home');
            },
            child: const Text("Aller sur l'acceuil ")),
      ),
    );
  }
}
