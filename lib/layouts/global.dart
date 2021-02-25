import 'package:checkingapp/get_post.dart';
import '../get_post_model.dart';
import '../get_post.dart';
import 'package:flutter/material.dart';

class Global extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _getPost.manggilPostData(),
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> dataPost = snapshot.data;

              return ListView.builder(
                  itemCount: dataPost.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(1),
                                child: Text(
                                  "Data Kasus Dunia",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontFamily: "Arial",
                                      color: Colors.blueGrey),
                                ),
                              ),
                              Container(
                                height: 20,
                                child: Text(
                                  "Terakhir Update : ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Arial",
                                      color: Colors.blueGrey),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/foto/positif.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "POSITIF",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.orange[800],
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "765.908.765",
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.orange[900],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[50],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/foto/sembuh2.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "SEMBUH",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.green[800],
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "87.908.987",
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.green[900],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green[50],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 100,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/foto/meninggal2.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "MENINGGAL",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.red[800],
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "123.544.678",
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.red[900],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.red[50],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 130,
                                    width: 300,
                                    margin: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: Image.asset(
                                            'assets/foto/idn.png',
                                            width: 60,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.all(5),
                                              child: Center(
                                                child: Text(
                                                  "INDONESIA",
                                                  style: TextStyle(
                                                    height: 2,
                                                    color: Colors.blueGrey[800],
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "Positif : " +
                                                      dataPost[index].positif,
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.blueGrey[900],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "Sembuh : " +
                                                      dataPost[index].sembuh,
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.blueGrey[900],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // margin: EdgeInsets.all(10),
                                              height: 20,
                                              child: Center(
                                                child: Text(
                                                  "Meninggal : " +
                                                      dataPost[index].meninggal,
                                                  style: TextStyle(
                                                    height: 1,
                                                    color: Colors.blueGrey[900],
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[50],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}
