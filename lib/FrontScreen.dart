import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/HomeScreen.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  List<String> adsList = [
    'assets/1..jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'MYNTRA INSIDER',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          leading: const Icon(Icons.arrow_back),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.black,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/kiara.jpg',
                    scale: 0.5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Become An INSIDER!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.orange.shade400,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Join the Insider Programme and earn Super coins with every purchase and much more. Log in now! ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'New Goal Criteria',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/crown.png',
                              scale: 1.5,
                              height: 100,
                              width: 80,
                            ),
                            const Column(
                              children: [
                                Text(
                                  '₹0',
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  " you've Spent ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 150,
                            ),
                            const Column(
                              children: [
                                Text(
                                  '₹ 7000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  " Goal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white70,
                          height: 0.5,
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/crown.png',
                              scale: 1.5,
                              height: 100,
                              width: 80,
                            ),
                            const Column(
                              children: [
                                Text(
                                  '0/5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Text(
                                  " you've Spent ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 180,
                            ),
                            const Column(
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 21,
                                      color: Colors.white),
                                ),
                                Text(
                                  " Goal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'Note :Recent purchases will only reflect in the goal once the return window is over.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Benefits of Joining the Program',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.orange.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/clock.png',
                            scale: 1,
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          const Text(
                            'Early Access to The Sales ',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 1,
                        color: Colors.white30,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(
                            'assets/trophy.png',
                            scale: 1,
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          const Text(
                            'Insider Exclusive Rewards & \n Benefits',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 1,
                        color: Colors.white30,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(
                            'assets/call.png',
                            scale: 1,
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          const Text(
                            'Early Access to The Sales ',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 1,
                        color: Colors.white30,
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'How Does it work',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.orange.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Earn SuperCoins with every purchase. You can get  upto 3 SuperCoins for every 100 spent',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                      'assets/slider.png',
                      scale: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Rewards',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.orange.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Use your SuperCoins to get exciting rewards',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    child: CarouselSlider(
                        items: adsList.map((e) {
                          return Image.asset(e);
                        }).toList(),
                        options: CarouselOptions(
                            height: 200,
                            initialPage: 1,
                            animateToClosest: true,
                            viewportFraction: 0.7,
                            autoPlay: true,
                            enableInfiniteScroll: true,
                            enlargeCenterPage: true,
                            autoPlayInterval: const Duration(seconds: 4))),
                  ),
                  Center(
                      child: Image.asset(
                    'assets/logo.jpg',
                    scale: 1.8,
                    alignment: Alignment.center,
                  )),
                  Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.pink.shade800),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return HomeScreen();
                            }));
                          },
                          child: const Text(
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t  LogIn \t\t\t\t\t\t\t \t\t\t\t\t\t\t ',
                            style: TextStyle(color: Colors.white),
                          ))),
                  const Center(
                    child: Text(
                      'By Enrolling you agree to',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Insider Terms & Conditions',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.pink.shade700,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
