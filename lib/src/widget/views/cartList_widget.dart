import 'package:flutter/material.dart';

class CartListWidget extends StatefulWidget {
  @override
  State<CartListWidget> createState() => _CartListWidgetState();
}

class _CartListWidgetState extends State<CartListWidget> {
  int counter = 3;

  _CartListWidgetState() {}
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    "assets/phone_three.png",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                color: Color.fromARGB(255, 216, 214, 214),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 131, 131, 131),
                                    )),
                                Text(
                                  "3",
                                  style: TextStyle(fontSize: 20),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 131, 131, 131),
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
    );
  }
}
