import 'package:ecommerce/screens/drawer/custom_drawer.dart';
import 'package:ecommerce/screens/items/itemsList.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  // const Items({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 20.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Ecom App UI",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notifications,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: ItemsList(),
        ),
      ),
    );
  }
}
