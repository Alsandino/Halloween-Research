import 'package:flutter/material.dart';
import 'task.dart';
import 'task_divider.dart';

//A Pokemon Go-inspired task app for Halloween, based on these screens: shorturl.at/diqSU
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halloween Research',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Halloween Research'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE88504),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pumpkin.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Center(
                  child: Container(
                height: 40.0,
                child: Image.asset(
                  'icons/binoculars.png',
                  color: Colors.white,
                ),
              )),
              //Center(child: Icon(Icons.remove_red_eye_outlined, color: Colors.white,)),
              SizedBox(
                height: 18.0,
              ),
              Text('HALOWEEN SPECIAL RESEARCH',
                  style: TextStyle(fontSize: 16.0, color: Colors.white)),
              SizedBox(
                height: 7.0,
              ),
              Divider(
                thickness: 1.5,
                color: Colors.white,
                height: 10.0,
                indent: 70.0,
                endIndent: 70.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      bottom: 30.0, top: 20.0, left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Center(
                          child: Text("Halloween Research",
                              style: TextStyle(
                                fontSize: 20.0,
                              ))),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task('Eat Candy', 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task('Do Something Mischievous', 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task('Draw a ghost', 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task('Watch a Scary Movie', 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task('Wear a Spooky Hat', 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task("Take a Creepy Picture", 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task("Carve a Pumpkin", 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Task("Drink a Hot Chocolate", 'CANDY'),
                      SizedBox(
                        height: 7.0,
                      ),
                      TaskDivider(),
                      SizedBox(
                        height: 15.0,
                      ),
                      GestureDetector(
                        onTap: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Reward'),
                            backgroundColor: Colors.orangeAccent.shade100,
                            content: const Text(
                                "You will get a prize proportional to the amount of tasks you've completed. \nBe careful, as you can only claim it once.\nProceed?"),
                            actions: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  primary: Color(0xFFEEF4D4),
                                ),
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text(
                                  'CLAIM',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 60.0, right: 60.0, top: 10.0, bottom: 30.0),
                          height: 80.0,
                          width: 20.0,
                          child: Center(
                              child: Text('CLAIM REWARD',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ],
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
