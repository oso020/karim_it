import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 22, 22),
        title: const Text(
          "Stay with me ",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height - 80, // Set a fixed height for the SizedBox
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal:10 ),
                    child: Image.asset('assets/12.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal:10 ),
                    child: Image.asset('assets/12.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal:10 ),
                    child: Image.asset('assets/12.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
