import 'package:flutter/material.dart';
import 'package:seather/core/constants/constants.dart';

/// TODO: need to create cubit for this
class CityPage extends StatelessWidget {
  CityPage(this.city, {super.key});
  String city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pic.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value) {
                    city = value;
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: textField,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, city),
                child: const Center(
                  child: Text(
                    'Get Weather',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
