import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:toutousotre_project/src/GlobalParameter/GlobalParameterItemCategoryView.dart';
import 'package:toutousotre_project/src/GlobalParameter/GlobalParameterItemProductView.dart';
import 'package:toutousotre_project/src/constants.dart';
import 'package:toutousotre_project/src/widget/views/Product_widget.dart';

import 'package:toutousotre_project/src/widget/views/category_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //left: false,
        //right: false,
        appBar: buildAppBar(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",
                            style: GoogleFonts.nunito(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.85),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              size: 35,
                            ))
                      ],
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...(GlobalParameterItemCateoryView.itemCategory)
                                    .map((item) {
                                  return CathegoryWidget(
                                      item['ImagePath']!, item['title']!);
                                }),
                              ]),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          "Latests Products",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //premier  row
                        ...(GlobalParameterItemProductView.itemProduct)
                            .map((item) {
                          return ProductWidget(item['ImagePath']!,
                              item['title']!, item['price']!);
                        }),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
        // ),

        //), child: null,
        );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 65,
      shadowColor: kPrimaryColor,
      backgroundColor: kPrimaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    color: Colors.black.withOpacity(0.85),
                  )),
              Text("Rafatul Islam",
                  style: GoogleFonts.nunito(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.85),
                  )),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )),
              ),
              Positioned(
                top: 47,
                right: 15,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 171, 44),
                      shape: BoxShape.circle),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
