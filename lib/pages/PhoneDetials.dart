import 'package:elsouq/componts/mydrawer.dart';
import 'package:flutter/material.dart';

class PhoneDetials extends StatefulWidget {
  @override
  _PhoneDetialsState createState() => _PhoneDetialsState();
}

class _PhoneDetialsState extends State<PhoneDetials> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("التفاصيل"),
            centerTitle: true,
            actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
            backgroundColor: Colors.amber,
          ),
          drawer: MyDrawer(),
          body: ListTile(),
        ));
  }
}
