import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: HomePeg(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePeg extends StatefulWidget {
  const HomePeg({Key? key}) : super(key: key);

  @override
  State<HomePeg> createState() => _HomePegState();
}

class _HomePegState extends State<HomePeg> {
  String city = "Surat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Button"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(value: city, onChanged: (value) {

            },items: [
              DropdownMenuItem<String>(onTap: () {
                setState(() {
                  city = "Surat";
                });
              },child: Text("Surat"),value: "Surat",),
              DropdownMenuItem<String>(onTap: () {
                setState(() {
                  city = "Vapi";
                });
              },child: Text("Vapi"),value: "Vapi",),
              DropdownMenuItem<String>(onTap: () {
                setState(() {
                  city = "Vadodara";
                });
              },child: Text("Vadodara"),value: "Vadodara",),
              DropdownMenuItem<String>(onTap: () {
                setState(() {
                  city = "Bharuch";
                });
              },child: Text("Bharuch"),value: "Bharuch",),
            ],)
          ],
        ),
      ),
    );
  }
}

