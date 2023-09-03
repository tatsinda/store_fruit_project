import 'package:flutter/material.dart';

class FavorisListWidget extends StatelessWidget {
  String imagePath = "";
  String title = "";
  String price = "";
  FavorisListWidget(String imagePath, String title, String price) {
    this.imagePath = imagePath;
    this.title = title;
    this.price = price;
  }
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
                    this.imagePath,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Container(
              width: 200,
              height: 100,
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        this.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 255, 37, 109),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          this.price,
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 218, 217, 217),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Add to cart",
                                style: TextStyle(color: Colors.black),
                              )),
                        )
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
