//import 'package:ailife/homepage/home.dart';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../homepage/home.dart';
import 'fancy_loader.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

  
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    _animationController.forward();

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: ShaderMask(
                    shaderCallback: (bounds) {
                      return const LinearGradient(
                        colors: [Colors.orange, Colors.green],
                        stops: [0.0, 1.0],
                      ).createShader(bounds);
                    },
                    child: GradientText(
                      'Welcome to AI-Life',
                      style: const TextStyle(
                        fontSize: 32.0,
                      ),
                      colors: const [
                        Colors.blue,
                        Colors.red,
                        Colors.green,
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 1),
                
                const SizedBox(
                  width: 100,
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyLoader(
                        animationType: AnimationType.gradient,
                        size: 50.0,
                        duration: Duration(milliseconds: 1000),
                        startColor: Colors.blue,
                        endColor: Colors.green,
                      ),
                      SizedBox(height: 22),
                      FancyLoader(
                        animationType: AnimationType.pulsing,
                        size: 50.0,
                        duration: Duration(milliseconds: 800),
                        startColor: Colors.blue,
                        endColor: Colors.green,
                      ),
                      SizedBox(height: 22),
                      FancyLoader(
                        animationType: AnimationType.rotating,
                        size: 50.0,
                        duration: Duration(milliseconds: 1200),
                        startColor: Colors.blue,
                        endColor: Colors.green,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                
                ElevatedButton(
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(title: '')));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 186, 169, 169)), 
                    foregroundColor: MaterialStateProperty.all<Color>(Colors
                        .black), 
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(14.0)), 
                    textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                        fontSize: 16)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), 

                      ),
                    ),
                  ),
                  child: const Text('Let\'s Go'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
