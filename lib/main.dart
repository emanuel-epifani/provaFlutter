import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_prova/screens/my_hello_world.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Future.wait([
      //x gli svg
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
            'assets/calendar.svg'),
        null,
      ),
      //x i jpeg/jpg/png eccc
      precacheImage(
        const AssetImage("assets/foto_CV.jpeg"),
        context,
      )
    ]);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHelloWorld(),
    );
  }
}
