import 'dart:convert';
import 'package:http/http.dart';
import 'getpostmodel_provinsi.dart';

class GetPost {
  final String getposturl = "https://api.kawalcorona.com/indonesia/provinsi";

  //Mengambil data
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);

    // mengubah json ke string
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      //data ditampung kedalam list di model post dan dirubah ke format json
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data tidak ada";
    }
  }
}
