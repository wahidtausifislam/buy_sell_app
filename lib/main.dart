import 'package:flutter/material.dart';

import 'category_wid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepPurple, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final aytextedcontroller = TextEditingController();
  final Baytextedcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List<Aybaymodel> aybaylsit = [
    Aybaymodel(ay: "ay", bay: "Bay"),
    Aybaymodel(ay: "ay", bay: "Bay"),
    Aybaymodel(ay: "ay", bay: "Bay"),
    Aybaymodel(ay: "ay", bay: "Bay"),
    Aybaymodel(ay: "ay", bay: "Bay"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buy Sell App"),
          centerTitle: true,
          backgroundColor: Colors.purple.shade200,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: formkey,
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        controller: aytextedcontroller,
                        decoration:
                            InputDecoration(labelText: "Ay", isDense: true),
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: TextFormField(
                        controller: Baytextedcontroller,
                        decoration:
                            InputDecoration(labelText: "Bay", isDense: true),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        onPressed: () {},
                        child: Text("Add"))),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryWidget(
                      title: 'Ay',
                      colour: Colors.green,
                    ),
                    CategoryWidget(
                      title: 'Date',
                      colour: Colors.blue,
                    ),
                    CategoryWidget(
                      title: 'Bay',
                      colour: Colors.amber,
                    ),
                    CategoryWidget(
                      title: 'More',
                      colour: Colors.brown,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class Aybaymodel {
  final String ay, bay;

  Aybaymodel({required this.ay, required this.bay});
}
