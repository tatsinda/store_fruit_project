import 'package:flutter/material.dart';
import 'package:toutousotre_project/src/constants.dart';

class CartPage extends StatefulWidget {
  CartPage() {}

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int counter = 3;
  int counter2 = 3;
  int counter3 = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Item details',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: kPrimaryColor,
          toolbarHeight: 70,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Container(
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banane.jpeg",
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          width: 200,
                          height: 100,
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FRUITS",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 110, 110, 110),
                                    fontSize: 10),
                              ),
                              Text(
                                "Banana",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "34.2Fc",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 216, 214, 214),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    counter--;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )),
                                            Text(
                                              counter.toString(),
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    counter++;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )),
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Container(
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banane.jpeg",
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          width: 200,
                          height: 100,
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FRUITS",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 110, 110, 110),
                                    fontSize: 10),
                              ),
                              Text(
                                "Banana",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "34.2Fc",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 216, 214, 214),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    counter2--;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )),
                                            Text(
                                              counter2.toString(),
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    counter2++;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )),
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Container(
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banane.jpeg",
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          width: 200,
                          height: 100,
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FRUITS",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 110, 110, 110),
                                    fontSize: 10),
                              ),
                              Text(
                                "Banana",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "34.2Fc",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 216, 214, 214),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    counter3--;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )),
                                            Text(
                                              counter3.toString(),
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    counter3++;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Color.fromARGB(
                                                      255, 131, 131, 131),
                                                )),
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "total \$6",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/thanksPage");
                        },
                        child: Text(
                          "PLACE ORDER",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
