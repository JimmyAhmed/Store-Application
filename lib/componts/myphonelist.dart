import 'package:flutter/material.dart';

class PhoneList extends StatelessWidget {
  final name;
  final camera;
  final cpu;
  final battery;
  final memory;
  final price;
  PhoneList({this.name, this.camera, this.cpu, this.battery, this.memory, this.price});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('PhoneDetials');
      },
      child: Container(
        height: 150,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Card(
                    child: Image.asset(
                  "images/products/1.jpg",
                ))),
            Expanded(
                flex: 2,
                child: Card(
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Text(
                                name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber[100], //
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 2.0,
                                      color: Colors.blueGrey, //
                                    ),
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Text("الكاميرا", style: TextStyle(color: Colors.grey, fontSize: 12)),
                            )),
                            Expanded(
                                child: Container(
                              child: Text(camera, style: TextStyle(color: Colors.blue, fontSize: 11)),
                            )),
                            Expanded(
                                child: Container(
                              child: Text("المعالج", style: TextStyle(color: Colors.grey, fontSize: 12)),
                            )),
                            Expanded(
                                child: Container(
                              child: Text(cpu, style: TextStyle(color: Colors.blue, fontSize: 9)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: Text("البطارية", style: TextStyle(color: Colors.grey, fontSize: 12)),
                            )),
                            Expanded(
                                child: Container(
                              child: Text(battery, style: TextStyle(color: Colors.blue, fontSize: 11)),
                            )),
                            Expanded(
                                child: Container(
                              child: Text("الذاكرة", style: TextStyle(color: Colors.grey, fontSize: 12)),
                            )),
                            Expanded(
                                child: Container(
                              child: Text(memory, style: TextStyle(color: Colors.blue, fontSize: 11)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Text(
                                    "السعر : ",
                                    style: TextStyle(color: Colors.blue, fontSize: 15),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Text(price, style: TextStyle(color: Colors.blue, fontSize: 15)),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
