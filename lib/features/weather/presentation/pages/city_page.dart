import 'package:flutter/material.dart';

import '../widgets/city_widget.dart';

/// TODO: need to create cubit for this
class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            /// TODO: pic is not available yet
            image: AssetImage('images/pic.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: const SafeArea(
          child: Column(
            children: [
              CityBackButton(),
              CityInsert(),
              CityGet(),
            ],
          ),
        ),
      ),
    );
  }
}
