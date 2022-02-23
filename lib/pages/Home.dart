import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdown = "Points";
  var items = [
    '0',
    '1',
    '2',
    '3',
    '4',
  ];
  Widget myWidget(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        children: [
          Container(
              width: 150,
              padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
              child: Column(
                children: [
                  DropdownButton(
                    // Initial Value
                    value: dropdown,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdown = newValue!;
                      });
                    },
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 5, 0, 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Text(
                "Perceived Stress Scale",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 184, 53, 43),
              ),
              constraints: BoxConstraints.tightForFinite(width: 1500),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(50),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 30, 0),
                child: RichText(
                    text: const TextSpan(
                  text:
                      "  A more precise measure of personal stress can be determined by using a variety of instruments that have been designed to help measure individual stress levels. The first of these is called the ",
                  style:
                      TextStyle(fontSize: 20, color: Colors.black, height: 1.5),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Perceived Stress Scale.',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 146, 29, 20))),
                  ],
                )),
              ),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(70, 30, 30, 0),
                child: Text(
                  "  The Perceived Stress Scale (PSS) is a classic stress assessment instrument. The tool, while originally developed in 1983, remains a popular choice for helping us understand how different situations affect our feelings and our perceived stress. The questions in this scale ask about your feelings and thoughts during the last month. In each case, you will be asked to indicate how often you felt or thought a certain way. Although some of the questions are similar, there are differences between them and you should treat each one as a separate question. The best approach is to answer fairly quickly. That is, don’t try to count up the number of times you felt a particular way; rather indicate the alternative that seems like a reasonable estimate.",
                  style:
                      TextStyle(fontSize: 20, color: Colors.black, height: 1.5),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 184, 53, 43),
              ),
              alignment: Alignment.center,
              constraints: const BoxConstraints.tightForFinite(width: 1500),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(50),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "For each question choose from the following alternatives: ",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("0 - never",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("1 - almost never",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("2 - sometimes",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("3 - fairly often",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text("4 - very often",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                myWidget(
                    "l. In the last month, how often have you been upset because of something that happened unexpectedly?"),
                myWidget(
                    "2. In the last month, how often have you felt that you were unable to control the important things in your life?"),
                myWidget(
                    "3. In the last month, how often have you felt nervous and stressed?"),
                myWidget(
                    "4. In the last month, how often have you felt confident about your ability to handle your personal problems?"),
                myWidget(
                    "5. In the last month, how often have you felt that things were going your way?"),
                myWidget(
                    "6. In the last month, how often have you found that you could not cope with all the things that you had to do?"),
                myWidget(
                    "7. In the last month, how often have you been able to control irritations in your life?"),
                myWidget(
                    "8. In the last month, how often have you felt that you were on top of things?"),
                myWidget(
                    "9. In the last month, how often have you been angered because of things that happened that were outside of your control?"),
                myWidget(
                    "10. In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?")
              ],
            ),
            //listbuilder
            //array
            // ----------------------------------------------------1-----------------------------------------------------------------------
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Figuring Your PSS Score",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 141, 15, 6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\u2022 You can determine your PSS score by following these directions:",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  Text(
                      "First, reverse your scores for questions 4, 5, 7, and 8. On these 4 questions, change the scores like•this:")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
