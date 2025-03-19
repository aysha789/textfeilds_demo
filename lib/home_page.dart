import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text("TextFeildsDemo",
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
             // textInputAction: TextInputAction.search,
             // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
