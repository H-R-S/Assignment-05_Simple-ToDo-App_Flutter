import 'package:assignment05/login.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  var titleList = ["   User"];

  var descList = ["    369haris@gmail.com"];

  var imgList = [
    "assets/myImage.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(padding: const EdgeInsets.all(10.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        titleList[index],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          descList[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueGrey[500],
                          ),
                        ),
                      ),
                      Container(
                          child: Row(
                        children: <Widget>[
                          FlatButton(
                            textColor: Colors.white,
                            child: Text(
                              'Logout',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ))
                    ],
                  )
                ],
              )),
            );
          }),
    );
  }
}
