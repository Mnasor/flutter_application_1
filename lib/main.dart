import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  int currentIndex = 0;

  String buttonName = 'Click';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Title"),
        ),
        body: Center(
          child: currentIndex==0? Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.red,
                  ),
                  
                  onPressed: () {
                    setState(() {
                      buttonName = 'Click';
                      count++;
                      buttonName = buttonName + '$count';
                    });
                  },
                  child: Text(
                    buttonName,
                    style: TextStyle(fontSize: 0),
                  ),
                  
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'Click';
                      count++;
                      buttonName = buttonName + '$count';
                    });
                  },
                  child: Text(
                    buttonName,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(
                Icons.settings,
              ),
            )
          ],
          currentIndex: 0,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
