import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text("Bangldesh's Flag",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),

          body: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 230,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 45,right: 50),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              )
            ],
          )
      ),
    );
  }
}