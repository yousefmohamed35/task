import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task/views/next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color MaleColor = Color(0xff383f44);
  Color FemaleColor = Color(0xff383f44);
  int hieght = 80;
  int weight = 70;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040609),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff040609),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                        if (MaleColor == Color(0xff383f44)) {
                          MaleColor = Color(0xff7a2520);
                          FemaleColor = Color(0xff383f44);
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 16, bottom: 16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: MaleColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.male,
                              size: 150,
                              color: Colors.white,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {});
                        if (FemaleColor == Color(0xff383f44)) {
                          FemaleColor = Color(0xff7a2520);
                          MaleColor = Color(0xff383f44);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 16, bottom: 16),
                        decoration: BoxDecoration(
                          color: FemaleColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.female,
                              size: 150,
                              color: Colors.white,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 8, bottom: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff383f44),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$hieght',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Slider(
                          min: 80,
                          max: 220,
                          activeColor: Color(0xff7a2520),
                          inactiveColor: Color.fromARGB(255, 84, 85, 87),
                          value: hieght.toDouble(),
                          onChanged: (weight) {
                            setState(() {});
                            this.hieght = weight.toInt();
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 16, top: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff383f44),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                  weight--;
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                      color: Color(0xff7a2520),
                                      borderRadius: BorderRadius.circular(500)),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                  weight++;
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff7a2520),
                                      borderRadius: BorderRadius.circular(500)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 16, top: 16),
                      decoration: BoxDecoration(
                        color: Color(0xff383f44),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                  age--;
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff7a2520),
                                      borderRadius: BorderRadius.circular(500)),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                  age++;
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff7a2520),
                                      borderRadius: BorderRadius.circular(500)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BmiResult(
                      gender: MaleColor == Color(0xff383f44),
                      age: age,
                      hieght: hieght,
                      weight: weight,
                      bmi_result: (weight/(hieght*hieght)*10000),
                    );
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xff7a2520)),
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}