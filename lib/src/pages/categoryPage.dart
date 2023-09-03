import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toutousotre_project/src/GlobalParameter/GlobalParameterItemCategoryView.dart';
import 'package:toutousotre_project/src/constants.dart';
import 'package:toutousotre_project/src/widget/views/categoryList_widget.dart';
import 'package:toutousotre_project/src/widget/views/category_widget.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //left: false,
        appBar: AppBar(
          toolbarHeight: 65,
          shadowColor: kPrimaryColor,
          backgroundColor: kPrimaryColor,
          toolbarOpacity: 1,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_backspace_outlined,
                    color: Colors.black,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: SafeArea(
              bottom: false,
              //top: false,
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(137, 219, 219, 219)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //premier Row des deux elements en block
                        ...(GlobalParameterItemCateoryView.itemCategory)
                            .map((item) {
                          return CategoryListWidget(
                              item['ImagePath']!, item['title']!);
                        }),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          //premier Row des deux elements en block
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
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 0, 0),
                                      child: Icon(
                                        Icons.favorite,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        child: ClipRect(
                                          child: Image.asset(
                                            "assets/banner_three.png",
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.19,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                      child: Text("Garlic"),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 0),
                                      child: Center(
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          child: ClipRect(
                                            child: Image.asset(
                                              "assets/phone_three.png",
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                      child: Text("Garlic"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          //premier Row des deux elements en block
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
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 0, 0),
                                      child: Icon(
                                        Icons.favorite,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        child: ClipRect(
                                          child: Image.asset(
                                            "assets/banner_three.png",
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.19,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                      child: Text("Garlic"),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 0),
                                      child: Center(
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          child: ClipRect(
                                            child: Image.asset(
                                              "assets/phone_three.png",
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                      child: Text("Garlic"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //dernier row du colum
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          //premier Row des deux elements en block
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
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 0, 0),
                                      child: Icon(
                                        Icons.favorite,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        child: ClipRect(
                                          child: Image.asset(
                                            "assets/banner_three.png",
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.19,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                      child: Text("Garlic"),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 0),
                                      child: Center(
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          child: ClipRect(
                                            child: Image.asset(
                                              "assets/phone_three.png",
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.19,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                      child: Text("Garlic"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
