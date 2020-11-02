import 'package:flutter/material.dart';
import 'package:elsouq/componts/mydrawer.dart';
import 'package:elsouq/componts/myphonelist.dart';

class Phones extends StatefulWidget {
  @override
  _PhonesState createState() => _PhonesState();
}

class _PhonesState extends State<Phones> {
  var phoneList = [
    {
      'name': 'A71 pro',
      'camera': '5ميغا',
      'cpu': 'ثماني النواه',
      'battery': '3000m',
      'memory': '120GB',
      'price': '2000\$',
      'image': 'images/products/1.jpg',
    },
    {
      'name': 'Note 7',
      'camera': '8ميغا',
      'cpu': 'رباعي النواه',
      'battery': '2000m',
      'memory': '60GB',
      'price': '2000\$',
      'image': 'images/products/2.jpg',
    },
    {
      'name': 'Note 9',
      'camera': '16ميغا',
      'cpu': 'رباعي النواه',
      'battery': '5000m',
      'memory': '80GB',
      'price': '2000\$',
      'image': 'images/products/2.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("هواتف"),
              centerTitle: true,
              actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
              backgroundColor: Colors.amber,
            ),
            drawer: MyDrawer(),
            body: ListView.builder(
              itemCount: phoneList.length,
              itemBuilder: (context, index) {
                return PhoneList(
                  name: phoneList[index]['name'],
                  camera: phoneList[index]['camera'],
                  cpu: phoneList[index]['cpu'],
                  battery: phoneList[index]['battery'],
                  memory: phoneList[index]['memory'],
                  price: phoneList[index]['price'],
                );
              },
            )));
  }
}
