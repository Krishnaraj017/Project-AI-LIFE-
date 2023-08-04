import 'package:ailife/Links/links.dart';
import 'package:flutter/material.dart';

class Toolspage extends StatelessWidget {
  const Toolspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center the content on desktop
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color:
                const Color(0x0019547b), // Set your desired background color here
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 500),
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: [
                              Color.fromRGBO(14, 136, 236, 1),
                              Color.fromARGB(255, 232, 31, 17),
                              Color.fromARGB(255, 14, 218, 20),
                            ],
                          ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                          ),
                      ),
                      child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text('!!!AI-LIFE!!!'),
                          )),
                    ),
                    const SizedBox(height: 20),
                    // Rest of the code...
      
                   // const SizedBox(height: 16),
                    _buildAnimatedContainer(
                      containerWidth: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildCustomContainer(
                                gradientColors: [Colors.blue, Colors.purple],
                                imagePath: 'assets/icons8-productivity.png',
                                text: 'Productivity',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CustomScrollableColumn()));
                                },
                                width: 100,
                                height: 200),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildCustomContainer(
                                gradientColors: [Colors.blue, Colors.purple],
                                imagePath: 'assets/icons8-video-64.png',
                                text: 'Video',
                                onPressed: () {
                                  // Add button action here
                                },
                                width: 100,
                                height: 200),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildCustomContainer(
                                gradientColors: [Colors.blue, Colors.purple],
                                imagePath: 'assets/icons8-marketing-96.png',
                                text: 'Marketing',
                                onPressed: () {
                                  // Add button action here
                                },
                                width: 100,
                                height: 200),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    _buildAnimatedContainer(
                      containerWidth: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildCustomContainer(
                                gradientColors: [Colors.blue, Colors.green],
                                imagePath: 'assets/icons8-design-96.png',
                                text: 'Design',
                                onPressed: () {
                                  // Add button action here
                                },
                                width: 100,
                                height: 200),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildCustomContainer(
                                gradientColors: [Colors.blue, Colors.green],
                                imagePath: 'assets/icons8-writing-96.png',
                                text: 'Writing',
                                onPressed: () {
                                  // Add button action here
                                },
                                width: 100,
                                height: 200),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildCustomContainer(
                                gradientColors: [Colors.blue, Colors.green],
                                imagePath: 'assets/icons8-chatbot-96.png',
                                text: 'Chatbot',
                                onPressed: () {
                                  // Add button action here
                                },
                                width: 100,
                                height: 200),
                            // _buildCustomContainer(
                            //   gradientColors: [Colors.blue, Colors.green],
                            //   imagePath: 'assets/jetpack.png',
                            //   text: '',
                            //   onPressed: () {
                            //     // Add button action here
                            //   },
                            //     width: 100,
                            //     height: 200
                            // ),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            // _buildCustomContainer(
                            //   gradientColors: [Colors.blue, Colors.purple],
                            //   imagePath: 'assets/jetpack.png',
                            //   text: '',
                            //   onPressed: () {
                            //     // Add button action here
                            //   },
                            //     width: 100,
                            //     height: 200
                            // ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    // _buildAnimatedContainer(
                    //   containerWidth: MediaQuery.of(context).size.width,
                    //   child: SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         _buildCustomContainer(
                    //           gradientColors: [Colors.blue, Colors.green],
                    //           imagePath: 'assets/jetpack.png',
                    //           text: 'Container 9',
                    //           onPressed: () {
                    //             // Add button action here
                    //           },
                    //             width: 100,
                    //             height: 200
                    //         ),
                    //         const SizedBox(
                    //           width: 10,
                    //         ),
                    //         const SizedBox(
                    //           width: 10,
                    //         ),
                    //         _buildCustomContainer(
                    //           gradientColors: [Colors.blue, Colors.purple],
                    //           imagePath: 'assets/jetpack.png',
                    //           text: 'Container 10',
                    //           onPressed: () {
                    //             // Add button action here
                    //           },
                    //             width: 100,
                    //             height: 200
                    //         ),
                    //         const SizedBox(
                    //           width: 10,
                    //         ),
                    //         _buildCustomContainer(
                    //           gradientColors: [Colors.blue, Colors.green],
                    //           imagePath: 'assets/jetpack.png',
                    //           text: 'Container 11',
                    //           onPressed: () {
                    //             // Add button action here
                    //           },
                    //             width: 100,
                    //             height: 200
                    //         ),
                    //         const SizedBox(
                    //           width: 10,
                    //         ),
                    //         _buildCustomContainer(
                    //           gradientColors: [Colors.blue, Colors.purple],
                    //           imagePath: 'assets/jetpack.png',
                    //           text: 'Container 12',
                    //           onPressed: () {
                    //             // Add button action here
                    //           },
                    //             width: 100,
                    //             height: 200
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Add more rows here...
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedContainer(
      {required Widget child, required double containerWidth}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 118, 5, 239).withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      width: containerWidth,
      child: child,
    );
  }

  Widget _buildCustomContainer({
    required List<Color> gradientColors,
    required String imagePath,
    required String text,
    required VoidCallback onPressed,
    required double width,
    required double height,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: CustumContainer(
        imagepath: imagePath,
        text: text,
        onPressed: onPressed,
        height: height,
        width: width,
      ),
    );
  }
}

class CustumContainer extends StatelessWidget {
  final String imagepath;
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const CustumContainer({
    required this.imagepath,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagepath,
          width: 150,
          height: 140,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 12,),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 44, 42, 42),
            backgroundColor: const Color.fromARGB(
                255, 128, 113, 182), // Text color of the button
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 12), // Padding
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14), // Rounded corners
            ),
            shadowColor: const Color.fromARGB(255, 255, 5, 1), // Shadow color
            elevation: 5, // Elevation, controls the shadow intensity
            textStyle: const TextStyle(
              fontSize: 16, // Text size
              fontWeight: FontWeight.bold, // Text weight
            ),
            // Add any other styling properties you want here
          ),
          child: const Text('Go'),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
