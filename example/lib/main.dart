import 'package:button_animations/button_animations.dart';
import 'package:button_animations/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Animations"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: AnimatedButton(
                        child: Text(
                          'Success',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        type: PredefinedThemes.success,
                        onTap: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: AnimatedButton(
                        child: Text(
                          'Success',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        type: PredefinedThemes.successOutline,
                        onTap: () {}),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Text("Gradient Button"),
                      onTap: () {},
                      isMultiColor: true,
                      colors: [
                        Colors.red[100],
                        Colors.blue[200],
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Text("Gradient Button with outline"),
                      onTap: () {},
                      isMultiColor: true,
                      isOutline: true,
                      colors: [
                        Colors.red[100],
                        Colors.blue[200],
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Text(
                        "Gradient Button",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {},
                      isMultiColor: true,
                      colors: [
                        Colors.green,
                        Colors.blue,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Text(
                        "Gradient Button with outline",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {},
                      isMultiColor: true,
                      isOutline: true,
                      colors: [
                        Colors.green,
                        Colors.blue,
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Text("Rounded Button"),
                      onTap: () {},
                      height: 60,
                      type: null,
                      borderRadius: 30,
                      color: Colors.cyan,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Text("Rounded Button with outline"),
                      onTap: () {},
                      height: 60,
                      type: null,
                      borderRadius: 30,
                      isOutline: true,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.home),
                          Text("Button with Icon"),
                        ],
                      ),
                      onTap: () {},
                      type: null,
                      height: 60,
                      borderRadius: 30,
                      color: Colors.teal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: AnimatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          Text("Button with Icon & outline",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      onTap: () {},
                      type: null,
                      height: 60,
                      width: 220,
                      borderRadius: 30,
                      isOutline: true,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: AnimatedButton(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://lh3.googleusercontent.com/baE_tms7XKv_EnCdJdTRsUSoLx7MId-lKcUH7T3tNDevG4FqpyHfF5h_zr_KdksCMQ=w150-h144-n-rw",
                      fit: BoxFit.fill,
                    ),
                  ),
                  onTap: () {},
                  type: null,
                  height: 144,
                  width: 144,
                  isOutline: true,
                  shadowHeightBottom: 4,
                  shadowHeightLeft: 4,
                  borderRadius: 10,
                  color: Color(0xFF033249),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
