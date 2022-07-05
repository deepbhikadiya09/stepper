import 'package:flutter/material.dart';

class SecondScr extends StatefulWidget {
  const SecondScr({Key? key}) : super(key: key);

  @override
  _SecondScrState createState() => _SecondScrState();
}

class _SecondScrState extends State<SecondScr> {
  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)!.settings.arguments as List;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Profile"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.all(20),
            height: 200,
            width: double.infinity,
            color: Colors.grey.shade400,
            child: Column(
              children: [
                Icon(Icons.account_circle,size: 100,),
                Text("Name : ${data[0]}",style: TextStyle(fontSize: 20,letterSpacing: 1.1),),
                Text("E-Mail : ${data[1]}",style: TextStyle(fontSize: 20,letterSpacing: 1.1),),
                Text("Number : ${data[2]}",style: TextStyle(fontSize: 20,letterSpacing: 1.1),),
                Text("Gender : ${data[3]}",style: TextStyle(fontSize: 20,letterSpacing: 1.1),),
                Text("Date Of Birth : ${data[4]}",style: TextStyle(fontSize: 20,letterSpacing: 1.1),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
