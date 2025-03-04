import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              welcomeMessage(),
              citiesView(context)
            ],
          ),
        ),
      )
    );
  }
}
Widget welcomeMessage(){
  return Text('Bienvenido a Colombia!'
  , style: TextStyle(
      fontSize: 24,
      color: Colors.brown
    ));
}
Widget citiesView(context){
  return Wrap(
    spacing: MediaQuery.of(context).size.width * 0.09,
    runSpacing: MediaQuery.of(context).size.width * 0.05,
    children: [
      cityContainer(context, 'assets/images/bgta.jpeg', 'Bogotá', Colors.amber),
      cityContainer(context, 'assets/images/ctgena.jpg', 'Cartagena', Colors.amberAccent),
      cityContainer(context, 'assets/images/ctgena.jpg', 'Cartagena', Colors.amberAccent),
      cityContainer(context, 'assets/images/ctgena.jpg', 'Cartagena', Colors.amberAccent),
    ]
  );
}
Widget cityContainer(context, img, txt, bgColor){
  return Container(
      width: MediaQuery.of(context).size.width * 0.3,  // 50% of screen width
      height: MediaQuery.of(context).size.height * 0.4, // 30% of screen height
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 
        MediaQuery.of(context).size.width * 0.012,
        vertical: MediaQuery.of(context).size.width * 0.004 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 3,
              child: Image.asset('$img')),
            Flexible(
              flex: 1, 
              child: Text('$txt')),
          ],
        ),
      ));
}