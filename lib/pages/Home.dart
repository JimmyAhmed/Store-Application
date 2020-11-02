import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:elsouq/componts/mydrawer.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        //AppBar Here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        appBar: AppBar(
          title: Text("الصفحة الرئيسية"),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
          backgroundColor: Colors.amber,
        ),
        //Drawer Here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        drawer: MyDrawer(),
        //Body Here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        body: ListView(
          children: [
            // carosle
            SizedBox(
              height: 150.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.cover,
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.transparent,
                images: [
                  AssetImage("images/home-banner.jpg"),
                  AssetImage("images/home-banner2.jpg"),
                  AssetImage("images/home-banner3.jpg"),
                ],
              ),
            ),
            // Text
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الأقسام",
                style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            // categore
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    child: ListTile(
                      title: Image.asset("images/category/watches.jpg"),
                      subtitle: Text(
                        "ساعات",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    child: ListTile(
                      title: Image.asset("images/category/phones.jpg"),
                      subtitle: Text(
                        "تليفونات",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    child: ListTile(
                      title: Image.asset("images/category/consoles.jpg"),
                      subtitle: Text(
                        "أجهزت العاب",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    child: ListTile(
                      title: Image.asset("images/category/laptops.jpg"),
                      subtitle: Text(
                        "لابتوبات",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    child: ListTile(
                      title: Image.asset("images/category/tools.jpg"),
                      subtitle: Text(
                        "أدوات",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Text
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "أخر المنتجات",
                style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            // leatest prodacts
            Container(
              height: 300,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                children: [
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/1.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.amber.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/2.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/3.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.deepOrange.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/4.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.lightGreen.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/5.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.teal.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/6.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.deepPurpleAccent.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/6.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.blueGrey.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/5.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.cyan.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/4.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.amber.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/3.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.red.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/2.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.orange.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: GridTile(
                        child: Image.asset(
                          "images/products/1.jpg",
                        ),
                        footer: Container(
                          height: 20,
                          margin: EdgeInsets.all(3),
                          color: Colors.amber.withOpacity(0.5),
                          child: Text(
                            "أخر أصدار",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
