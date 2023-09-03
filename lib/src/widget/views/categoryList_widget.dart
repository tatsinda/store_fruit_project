import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  String imagePath = "";
  String title = "";

  CategoryListWidget(String ImagePath, String title) {
    this.imagePath = ImagePath;
    this.title = title;
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
          Container(
            alignment: AlignmentDirectional.topStart,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15)),
            width: 150,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                  child: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Center(
                  child: Container(
                    width: 70,
                    height: 70,
                    child: ClipRect(
                      child: Image.asset(
                        this.imagePath,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.19,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Text(this.title),
                ),
              ],
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15)),
            width: 150,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Center(
                    child: Container(
                      width: 70,
                      height: 70,
                      child: ClipRect(
                        child: Image.asset(
                          this.imagePath,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.19,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Text(this.title),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
