import 'package:checkingapp/getpost_provinsi.dart';
import '../getpostmodel_provinsi.dart';
import '../getpost_provinsi.dart';
import 'package:flutter/material.dart';

class Lokal extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _getPost.manggilPostData(),
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData != null) {
              List<Post> dataPost = snapshot.data;

              return ListView.builder(
                  itemCount: dataPost.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130,
                      width: 300,
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/foto/point.png',
                              width: 60,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    dataPost[index].provinsi,
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blueGrey[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
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
                                        dataPost[index].positif.toString() +
                                        " jiwa",
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
                                        dataPost[index].sembuh.toString() +
                                        " jiwa",
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
                                        dataPost[index].meninggal.toString() +
                                        " jiwa",
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
                        color: Colors.blueGrey[100],
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
                            offset: Offset(0, 3), // changes position of shadow
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
