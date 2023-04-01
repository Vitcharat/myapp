import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  context: context,
                  color: Colors.green,
                  name: "นายวิชรัตน์ เพิ่มชีลอง",
                  blocktext: "Student-ID 633410085-1",
                  image: "assets/images/Dew.jpg"),
              Card(
                  context: context,
                  color: Colors.green,
                  name: "นายจิรภัทร ภูหลักถิน",
                  blocktext: "Student-ID 633410008-9",
                  image: "assets/images/Dimond.jpg"),
              Card(
                  context: context,
                  color: Colors.green,
                  name: "นายนพรัตน์ ตั้งหมู่",
                  blocktext: "Student-ID 633410081-9",
                  image: "assets/images/Owen.jpg"),
              Card(
                  context: context,
                  color: Colors.green,
                  name: "นายยงยุทธ ทิพวรรณ์",
                  blocktext: "Student-ID 633410084-3",
                  image: "assets/images/Copter.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String name,
      required String blocktext,
      required String image}) {
    return Container(
      width: 400,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: name,
                        blocktext: blocktext,
                        image: image,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              image,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: color,
                child: Center(child: Text(name))),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name, required this.blocktext, required this.image});
  String name;
  String blocktext;
  String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter App"),
      ),
      body: Column(children: [Text(name), Text(blocktext)]),
    );
  }
}
