import 'package:flutter/material.dart';

import '../models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Animal App",
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: AnimalsType.animalType
            .map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    "SecondPage",
                    arguments: e,
                  );
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 350,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://source.unsplash.com/random/?$e",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.20),
                          offset: const Offset(0, 0),
                          blurRadius: 5,
                          spreadRadius: 3,
                        )
                      ]),
                  child: Container(
                    alignment: Alignment.center,
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        bottom:  Radius.circular(10),
                      ),
                      color: Colors.black.withOpacity(0.50),
                    ),
                    child: Text(
                      "$e Animal",
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
