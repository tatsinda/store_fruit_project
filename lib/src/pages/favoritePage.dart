import 'package:flutter/material.dart';
import 'package:toutousotre_project/src/GlobalParameter/GlobalParameterItemFavorisView.dart';
import 'package:toutousotre_project/src/constants.dart';
import 'package:toutousotre_project/src/widget/views/favoriteList_widget.dart';

class FavoritePage extends StatefulWidget {
  CartPage() {}

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Favorite\'s',
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
                ...(GlobalParameterItemFavorisView.itemFavoris).map((item) {
                  return FavorisListWidget(
                      item['ImagePath']!, item['title']!, item['price']!);
                }),
              ],
            ),
          ),
        ));
  }
}
