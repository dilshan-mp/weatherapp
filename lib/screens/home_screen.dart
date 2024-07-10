import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight,40,20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFAB40)
                  ),
                ),
              ),
              BackdropFilter(
                filter:ImageFilter.blur(sigmaX: 100.0,sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Aix-en-Provence',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                      const Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                    ),
                    Image.asset(
                      "assets/clouds.png",
                    ),
                    const Center(
                      child: Text(
                        '21°c',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 45
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Friday 16 - 09.41am',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SingleChildScrollView(
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/sun.png",
                            scale: 10,
                          ),
                          const SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sunrise',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '5.34 am',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 50,),
                          Image.asset(
                            "assets/moon.png",
                            scale: 10,
                          ),
                          const SizedBox(width: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'moone',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '12.34 am',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/high-temperature.png",
                          scale: 10,
                        ),
                        const SizedBox(width: 5,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Temp Max',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            SizedBox(height: 3,),
                            Text(
                              '12°c',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 50,),
                        Image.asset(
                          "assets/low-temperature.png",
                          scale: 10,
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'moone',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            SizedBox(height: 3,),
                            Text(
                              '12.34 am',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}