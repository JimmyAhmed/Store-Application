import 'package:flutter/material.dart';
import 'package:elsouq/componts/mydrawer.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("المنتجات"),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
          backgroundColor: Colors.amber,
        ),
        drawer: MyDrawer(),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('Phones');
              },
              child: Container(
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("images/products/1.jpg")),
                      Container(
                        width: double.infinity,
                        color: Colors.red,
                        child: Text(
                          "هواتف",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("images/products/3.jpg")),
                      Container(
                        width: double.infinity,
                        color: Colors.black,
                        child: Text(
                          "كونسولات",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("images/products/5.jpg")),
                      Container(
                        width: double.infinity,
                        color: Colors.green,
                        child: Text(
                          "ساعات",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("images/products/2.jpg")),
                      Container(
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text(
                          "هواتف",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("images/products/4.jpg")),
                      Container(
                        width: double.infinity,
                        color: Colors.pink,
                        child: Text(
                          "كونسولات",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("images/products/6.jpg")),
                      Container(
                        width: double.infinity,
                        color: Colors.grey,
                        child: Text(
                          "ساعات",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
