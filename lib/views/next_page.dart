import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  BmiResult(
      {super.key,
      required this.gender,
      required this.age,
      required this.hieght,
      required this.bmi_result,
      required this.weight});
  bool gender;
  int age;
  int hieght;
  int weight;
  double bmi_result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(32),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff191c1e),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'GENDER : ${Genderf()}',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'AGE : $age ',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'HIEGHT : $hieght ',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'WEIGHT : $weight',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'RESULT BMI : ${bmi_result.toInt()}',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'PERFECT WEIGHT : ${perfect_weight()}',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }

  String Genderf() {
    String gender_type;
    (gender == true) ? gender_type = 'Female' : gender_type = 'Male';
    return gender_type;
  }

  String perfect_weight() {
    if (bmi_result <= 19)
      return 'Under Weight';
    else if (bmi_result > 25)
      return 'Over Weight';
    else
      return 'Normal';
  }
}
