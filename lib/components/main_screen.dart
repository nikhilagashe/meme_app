import 'package:flutter/material.dart';
import 'package:meme_app/controller/fetchMeme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String? _counter = '1';
  String ImgUrl = '';
  @override
  void initState() {
    // TODO: implement initState
    UpdateMeme();
  }



  void UpdateMeme() async{
    String getUrl = await FetchMeme.fetchNewMeme();
    setState(() {
      ImgUrl = getUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
            ),
            Text(
              'Meme #${_counter}',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 2),
            ),
            Text(
              'Target 1000 Memes',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350.0,
              width: 550.0,
              child: Image.network(ImgUrl),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                UpdateMeme();
              },
              child: Text('Next Meme'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // background (button) color
                foregroundColor: Colors.white, // foreground (text) color
              ),
            ),
            Spacer(),
            Text('Created by '),
            Text('Nikhil Agashe'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
