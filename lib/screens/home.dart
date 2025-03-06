import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.red, child: Column()),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,
                              color: Colors.blueGrey,
                              child: Center(child: Text('one')),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              color: Colors.redAccent,
                              child: Center(child: Text('two')),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              color: Colors.amberAccent,
                              child: Center(child: Text('three')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(color: Colors.blue, child: Column()),
            ),
          ],
        ),
      ),
    );
  }
}
