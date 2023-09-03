import 'package:flutter/material.dart';

class CathegoryWidget extends StatelessWidget {
  String ImagePath = '';
  String title = "";

  CathegoryWidget(String ImagePath, String title) {
    this.ImagePath = ImagePath;
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(80),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/displayCategory");
              },
              child: Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        ImagePath,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.19,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
