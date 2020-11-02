import 'package:elsouq/componts/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  //Future logic
  Future getData() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Test"),
            centerTitle: true,
            actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
            backgroundColor: Colors.amber,
          ),
          drawer: MyDrawer(),
          body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(snapshot.data[index]['title']),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}

/* body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: Text(snapshot.data[0]['title']),
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}*/
