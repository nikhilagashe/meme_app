import 'dart:convert';

import 'package:http/http.dart';

class FetchMeme{
  static fetchNewMeme()async{
    Response response = await get(Uri.parse("https://meme-api.com/gimme"));
    Map bodyData = jsonDecode(response.body);
    return bodyData["url"];
  }
}