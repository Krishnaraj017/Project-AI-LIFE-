import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'dart:core';
import 'package:url_launcher/url_launcher.dart';
class CustomScrollableColumn extends StatelessWidget {
  const CustomScrollableColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: const Color.fromARGB(
                255, 16, 15, 15), // Set the desired background color here
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [
                            Colors.orange,
                            Color.fromARGB(255, 232, 31, 17),
                            Color.fromARGB(255, 14, 218, 20),
                          ],
                          stops: [0.0, 0.5, 1.0],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: const Text(
                        'Productivity',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: 'Hints AI',
                          description:
                              'AI Assistant that integrates with any software to perform tasks on your behalf',
                          imageUrl: 'assets/hints.jpg',
                          url: 'https://hints.so/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'MagicalAI',
                          description:
                              'Magical is the GPT-powered calendar for your meetings & work.',
                          imageUrl: 'assets/magical.png',
                          url: 'https://magical.so/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'QuestAI',
                          description: 'Generate ReactJS code from your design. ',
                          imageUrl: 'assets/questai.png',
                          url: 'https://www.quest.ai/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'AlanAI',
                          description:
                              'Actionable AI enables a natural conversational text or AI Assistant,and personalized experiences for your app.',
                          imageUrl: 'assets/alanai.png',
                          url: 'https://alan.app/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16), // Add space between rows
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: 'Noty.ai',
                          description:
                              'Noty seamlessly integrates with Google Workspace services and Zoom.',
                          imageUrl: 'assets/notiai.png',
                          url: 'https://noty.ai/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Futurepedia',
                          description:
                              'THE LARGEST AI TOOLS DIRECTORY, UPDATED DAILY',
                          imageUrl: 'assets/futurepedia.jpg',
                          url: 'https://www.futurepedia.io/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'SheetAi.app',
                          description:
                              'describe what you want in plain English,and watch the magic happen in your spreadsheet!🪄✨',
                          imageUrl: 'assets/sheetai.png',
                          url: 'https://www.sheetai.app/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Beautiful ai',
                          description:
                              'Start your presentation inspired.Smart templates give your team a blueprint for making presentations.',
                          imageUrl: 'assets/beautyful.png',
                          url: 'https://www.beautiful.ai/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: 'Support board',
                          description:
                              'Automate your customers communication with artificial intelligence-driven bots.',
                          imageUrl: 'assets/supportboard.jpg',
                          url: 'https://board.support/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Xembly',
                          description:
                              'Xembly handles the calendar chaos for you so scheduling a meeting.',
                          imageUrl: 'assets/xembly.png',
                          url: 'https://www.xembly.com/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Taskade',
                          description:
                              'Five AI-powered tools in one to supercharge your team productivity.',
                          imageUrl: 'assets/taskade.png',
                          url: 'https://www.taskade.com/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Nanonet',
                          description:
                              'Capture data from documents instantly.Reduce turn around times and the manual effort required.',
                          imageUrl: 'assets/nanonets.png',
                          url: 'https://nanonets.com/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: 'Genei',
                          description:
                              'Automatically summarise background reading and produce blogs,articles,and reports faster.',
                          imageUrl: 'assets/genai.png',
                          url: 'https://www.genei.io/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'AI Intern',
                          description:
                              'Efficiently complete research,generate quality content and quickly respond to a wide range of questions.',
                          imageUrl: 'assets/aiintern.jpg',
                          url: 'https://aiintern.io/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Fireflies Ai',
                          description:
                              'Fireflies.ai helps your team transcribe, summarize, search, and analyze voice conversations.',
                          imageUrl: 'assets/fireflies.jpg',
                          url: 'https://fireflies.ai/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'WhatThe Ai',
                          description:
                              'THE LARGEST FREE AI DIRECTORY, UPDATED DAILY',
                          imageUrl: 'assets/whatai.png',
                          url: 'https://whattheai.tech/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: 'Fibery AI',
                          description:
                              'Use Fibery AI to brainstorm ideas, improve writing, automate tasks.',
                          imageUrl: 'assets/fibery.jpg',
                          url: 'https://fibery.io/ai',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Mayday',
                          description:
                              'GLOBAL RISK, DISASTER, AND ENVIRONMENTAL INTELLIGENCE',
                          imageUrl: 'assets/maydayai.jpg',
                          url: 'https://mayday.ai/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Rewind',
                          description:
                              'Rewind captures everything you’ve seen on your Mac and iPhone and makes it searchable with AI.',
                          imageUrl: 'assets/rewindai.jpg',
                          url: 'https://www.rewind.ai/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'Vowel',
                          description:
                              'Vowel is the tool for teams to host, summarize, search, and share video meetings.',
                          imageUrl: 'assets/vowelai.jpg',
                          url: 'https://www.vowel.com/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          text: 'GitMind AI',
                          description:
                              'A new generation of free collaborative mind mapping software.',
                          imageUrl: 'assets/gitmind.jpg',
                          url: 'https://gitmind.com/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        SizedBox(
                            width: 16), // Add space between containers in a row
                        CustomContainer(
                          text: 'CoGram',
                          description:
                              'Cogram uses AI to take notes in virtual meetings, track action items etc.',
                          imageUrl: 'assets/cogram.jpeg',
                          url: 'https://www.cogram.com/',
                          gradientColors: [Colors.blue, Colors.greenAccent],
                        ),
                        // SizedBox(
                        //     width: 16), // Add space between containers in a row
                        // CustomContainer(
                        //   text: 'Taskade',
                        //   description: 'A chatbot powered by GPT',
                        //   imageUrl: 'assets/jetpack.png',
                        //   url: 'https://www.someexample.com/',
                        //   gradientColors: [Colors.blue, Colors.greenAccent],
                        // ),
                        // SizedBox(
                        //     width: 16), // Add space between containers in a row
                        // CustomContainer(
                        //   text: 'Nanonet',
                        //   description: 'A chatbot powered by GPT',
                        //   imageUrl: 'assets/jetpack.png',
                        //   url: 'https://www.someexample.com/',
                        //   gradientColors: [Colors.blue, Colors.greenAccent],
                        // ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 6), // Add space between rows
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String url;
  final String description;
  final List<Color> gradientColors;

  const CustomContainer({
    Key? key,
    required this.text,
    required this.imageUrl,
    required this.url,
    required this.description,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
        } else {
          throw 'Could not launch $url';
        }
      },


      child: Transform(
        transform: Matrix4.identity()..setEntry(3, 2, 0.002),
        child: Container(
          height: 280,
          width: 190,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                description, // New description text
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10.0),
              Image.asset(
                imageUrl,
                height: 90,
                width: 100,
              ),
              const SizedBox(height: 1.0),
            ],
          ),
        ),
      ),
    );
  }
}
