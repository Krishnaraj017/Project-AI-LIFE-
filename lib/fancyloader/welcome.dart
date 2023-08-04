import 'package:ailife/homepage/home.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'fancy_loader.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
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

    // Create the fade-in animation for the "Welcome to FitLife!" text
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Create the button scale animation for the "Get Started" button
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _goToGetStarted(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const HomePage(
                title: '',
              )),
    );
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
                // Animated "Welcome to FitLife!" text with gradient effect
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
                // Use SizedBox with fixed dimensions to properly display FancyLoader
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
                // Animated Circular and Red "Get Started" Button with scale effect
                ElevatedButton(
                  onPressed: () {
                    _goToGetStarted(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 186, 169, 169)), // Set the background color when the button is in the default state.
                    foregroundColor: MaterialStateProperty.all<Color>(Colors
                        .black), // Set the text color when the button is in the default state.
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(14.0)), // Set the button's padding.
                    textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                        fontSize: 16)), // Set the text style of the button.
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Set the button's border radius.
                        // You can also set other properties like side color, width, etc.
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
