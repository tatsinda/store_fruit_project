import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  String imagePath = "";
  String title = "";
  String price = "";

  ProductWidget(String ImagePath, String title, String price) {
    this.imagePath = ImagePath;
    this.title = title;
    this.price = price;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // premier block du row
          Container(
              alignment: AlignmentDirectional.topStart,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 98, 98),
                  borderRadius: BorderRadius.circular(15)),
              width: 150,
              height: 150,
              child: Container(
                alignment: AlignmentDirectional.topStart,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15)),
                width: 150,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                      child: Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 173, 172, 172),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: 70,
                          height: 70,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/detailsProduct");
                            },
                            child: ClipRect(
                              child: Image.asset(
                                this.imagePath,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.19,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      child: Text(this.title),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            this.price,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Add to card",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 10))
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Container(
            alignment: AlignmentDirectional.topStart,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15)),
            width: 150,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                  child: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 255, 47, 99),
                  ),
                ),
                Center(
                  child: Container(
                      width: 70,
                      height: 70,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/detailsProduct");
                        },
                        child: ClipRect(
                          child: Image.asset(
                            this.imagePath,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.19,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Text(this.title),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        this.price,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Add to card",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 10))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
