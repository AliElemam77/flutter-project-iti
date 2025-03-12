import 'package:flutter/material.dart';
import 'package:tests/screens/calculated_ibm.dart';
import 'package:tests/core/widgets/ibm_buttons.dart';

class IBMScreen extends StatefulWidget {
  const IBMScreen({super.key});

  @override
  State<IBMScreen> createState() => _IBMScreenState();
}

class _IBMScreenState extends State<IBMScreen> {
  bool isMale = true;
  int height = 150;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      bottomSheet: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => CalculatedIbm(
                    height: height,
                    weight: weight,
                    age: age,
                    type: isMale ? "Male" : "Female",
                  ),
            ),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          height: 80,
          width: double.infinity,
          child: const Center(
            child: Text(
              'IBM Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(125, 10, 10, 1),
        title: const Text(
          'IBM Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: IbmButton(
                    color:
                        isMale
                            ? const Color.fromARGB(255, 44, 30, 30)
                            : const Color.fromRGBO(191, 49, 49, 1),
                    text: const Text(
                      'Male',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: IbmButton(
                    color:
                        !isMale
                            ? const Color.fromARGB(255, 44, 30, 30)
                            : const Color.fromRGBO(191, 49, 49, 1),
                    text: const Text(
                      'Female',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          IbmButton(
            text: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Height',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          height++;
                        });
                      },
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                      iconSize: 60,
                    ),
                    Text(
                      '$height',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          height -= 5;
                        });
                      },
                      icon: const Icon(Icons.remove),
                      color: Colors.white,
                      iconSize: 60,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: IbmButton(
                  text: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            iconSize: 20,
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                weight -= 5;
                              });
                            },
                            icon: const Icon(Icons.remove),
                            color: Colors.white,
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: IbmButton(
                  text: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Age',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            iconSize: 20,
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age -= 5;
                              });
                            },
                            icon: const Icon(Icons.remove),
                            color: Colors.white,
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
