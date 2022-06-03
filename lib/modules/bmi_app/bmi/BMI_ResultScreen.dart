import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BMIResult({
    required this.result ,
    required this.age,
    required this.isMale,
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale?"Male":"Female"}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            Text('Result : $result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
            Text('Age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),)
          ],
        ),
      ),
    );
  }
}
