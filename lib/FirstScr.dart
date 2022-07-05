import 'package:flutter/material.dart';
import 'package:stepper/SecondScr.dart';

class FirstScr extends StatefulWidget {
  const FirstScr({Key? key}) : super(key: key);

  @override
  _FirstScrState createState() => _FirstScrState();
}

class _FirstScrState extends State<FirstScr> {
  int i=0;
  String gender_ch="Male";
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController number=TextEditingController();
  TextEditingController dob=TextEditingController();
  List l1=[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Profile"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stepper(
                currentStep: i,
                steps: [
                  Step(
                    title: Text("Name"),
                    content: Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                    ),
                  ),
                  Step(
                    title: Text("E-mail"),
                    content: Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-mail',
                        ),
                      ),
                    ),
                  ),
                  Step(
                    title: Text("Phone Number"),

                    content: Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',

                        ),
                      ),
                    ),
                  ),
                  Step(
                    title: Text("Gender"),
                    content: Container(
                      height: 50,
                      width: 300,
                      child: Row(
                        children: [
                          Radio(value: "Male", groupValue: gender_ch, onChanged: (value){
                            setState(() {
                              gender_ch=value as String;
                            });
                          }),
                          Text("Male"),
                          SizedBox(width: 30,),
                          Radio(value: "Female", groupValue: gender_ch, onChanged: (value){
                            setState(() {
                              gender_ch=value as String;
                            });
                          }),
                          Text("Female"),
                        ],
                      ),
                    )
                  ),
                  Step(
                    title: Text("DOB"),
                    content: Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: dob,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'DOB',
                        ),
                      ),
                    ),
                  ),
                ],
                onStepContinue: (){
                  if(i<5){
                    setState(() {
                      i++;
                    });
                  }
                },
                onStepCancel: (){
                  if(i>0){
                    setState(() {
                      i--;
                    });
                  }
                },
                onStepTapped: (index){
                  setState(() {
                    i=index;
                  });
                },
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  l1.addAll({name.text,email.text,number.text,gender_ch.toString(),dob.text});
                  Navigator.pushNamed(context, '/SecondScr',arguments: l1);
                });
              }, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }

}
