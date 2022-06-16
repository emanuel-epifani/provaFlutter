import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/example.dart';

class MyHelloWorld extends StatelessWidget {
  List<Example> examples = [
    Example(title: "prova 1", body: "testo 1"),
    Example(title: "prova 2", body: "testo 2"),
    Example(title: "prova 3", body: "testo 3"),
    Example(title: "prova 4", body: "testo 4"),
    Example(title: "prova 5", body: "testo 5"),
    Example(title: "prova 6", body: "testo 6"),
    Example(title: "prova 7", body: "testo 7"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SizedBox(
      height: 200,
      child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 20),
          child: Row(
            children: [
              Image.asset(
                'assets/foto_CV.jpeg',
                alignment: Alignment.topLeft,
                fit: BoxFit.contain,
                height: 150,
              ),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("EMANUEL EPIFANI"),
                                Text("Web Developer Jr"),
                              ],
                            ),
                          ),
                          rowInfo("assets/calendar.svg", "08/04/1994"),// data di nascita
                          rowInfo("assets/house.svg", "Borgomasino (TO)"),// data di nascita
                          rowInfo("assets/phone.svg", "348 4299437"),// data di nascita
                          rowInfo("assets/email.svg", "emanuel.epifani.m@gmail.com"),// data di nascita
                        ],
                      )))
            ],
          ),
      ),
    ),
        ));
  }


  Widget rowInfo(String svgPath, String text){
    return Row( children: [
      Container(
          height: 15,
          width: 15,
          margin: const EdgeInsets.only(right: 10),
          child: SvgPicture.asset(svgPath)
      ),
      Text(text)
    ]);// resi
  }
}

//esempio ListView
// Container(
// height:  40,
// child: ListView.builder(
// itemCount: examples.length,
// itemBuilder: (context, index) {
// return Text(examples[index].title + " " + examples[index].body);
// }),
// )
