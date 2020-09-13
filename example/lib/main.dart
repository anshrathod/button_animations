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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(2),
              //       child: AnimatedButton(
              //         child: Icon(
              //           FontAwesomeIcons.facebookF,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         onTap: () {},
              //         type: null,
              //         height: 45,
              //         width: 45,
              //         borderRadius: 22.5,
              //         color: Color(0xFF49659F),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(2),
              //       child: AnimatedButton(
              //         child: Icon(
              //           FontAwesomeIcons.twitter,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         onTap: () {},
              //         type: null,
              //         height: 45,
              //         width: 45,
              //         borderRadius: 22.5,
              //         color: Color(0xFF1DA1F2),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(2),
              //       child: AnimatedButton(
              //         child: Icon(
              //           FontAwesomeIcons.google,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         onTap: () {},
              //         type: null,
              //         height: 45,
              //         width: 45,
              //         borderRadius: 22.5,
              //         color: Colors.blue,
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(2),
              //       child: AnimatedButton(
              //         child: Icon(
              //           FontAwesomeIcons.microsoft,
              //           color: Colors.lightBlue,
              //           size: 25,
              //         ),
              //         onTap: () {},
              //         type: null,
              //         height: 45,
              //         width: 45,
              //         borderRadius: 22.5,
              //         color: Colors.white,
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(2),
              //       child: AnimatedButton(
              //         child: Icon(
              //           FontAwesomeIcons.instagram,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         onTap: () {},
              //         type: null,
              //         height: 45,
              //         width: 45,
              //         borderRadius: 22.5,
              //         color: Color(0xFFB81877),
              //       ),
              //     ),
              //   ],
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: AnimatedButton(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Icon(
              //           FontAwesomeIcons.linkedinIn,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         Text(
              //           "Sign in with LinkedIn",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //           ),
              //         )
              //       ],
              //     ),
              //     onTap: () {},
              //     type: null,
              //     height: 50,
              //     shadowHeightBottom: 4,
              //     shadowHeightLeft: 4,
              //     width: 275,
              //     borderRadius: 25,
              //     color: Color(0xFF0077B5),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: AnimatedButton(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Icon(
              //           FontAwesomeIcons.pinterestP,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         Text(
              //           "Sign in with Pinterest",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //           ),
              //         )
              //       ],
              //     ),
              //     onTap: () {},
              //     type: null,
              //     height: 50,
              //     isOutline: true,
              //     shadowHeightBottom: 4,
              //     shadowHeightLeft: 4,
              //     width: 250,
              //     borderRadius: 2,
              //     color: Colors.red,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: AnimatedButton(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Icon(
              //           FontAwesomeIcons.githubAlt,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         Text(
              //           "Sign in with GitHub",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //           ),
              //         )
              //       ],
              //     ),
              //     onTap: () {},
              //     type: null,
              //     height: 50,
              //     shadowHeightBottom: 4,
              //     shadowHeightLeft: 4,
              //     width: 250,
              //     shadowColor: Colors.grey,
              //     blurColor: Colors.grey,
              //     blurRadius: 5,
              //     borderRadius: 10,
              //     color: Colors.black,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: AnimatedButton(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Icon(
              //           FontAwesomeIcons.apple,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         Text(
              //           "Sign in with Apple",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //           ),
              //         )
              //       ],
              //     ),
              //     onTap: () {},
              //     type: null,
              //     shadowColor: Colors.pink,
              //     height: 50,
              //     width: 250,
              //     shadowHeightBottom: 6,
              //     shadowHeightLeft: 4,
              //     borderRadius: 10,
              //     color: Color(0xFF333333),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: AnimatedButton(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Icon(
              //           Icons.mail_outline,
              //           color: Colors.white,
              //           size: 25,
              //         ),
              //         Text(
              //           "Sign in with Email",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //           ),
              //         )
              //       ],
              //     ),
              //     onTap: () {},
              //     type: null,
              //     height: 50,
              //     width: 250,
              //     isOutline: true,
              //     darkShadow: false,
              //     shadowHeightBottom: 4,
              //     shadowHeightLeft: 4,
              //     borderRadius: 10,
              //     color: Colors.lightBlueAccent,
              //   ),
              // ),

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
