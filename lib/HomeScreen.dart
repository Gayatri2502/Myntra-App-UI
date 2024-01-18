import 'package:flutter/material.dart';
import 'package:myntra_clone/sliders/ads_Slider.dart';
import 'package:myntra_clone/sliders/brands_Slider.dart';
import 'package:myntra_clone/sliders/categories_Slider.dart';
import 'package:myntra_clone/sliders/feature_slection_Slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/myntra_logo.jpg',
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(color: Colors.pink),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.pink.shade700,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.trending_up_rounded,
              ),
              label: 'Hot Trends'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Everyday'),
          BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'Luxe'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.mic),
                          onPressed: () {},
                        ),
                        hintText: 'Search for brands and products',
                        hintStyle: const TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/fashion.png',
                                scale: 1.5,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Center(
                                child: Text(
                                  'Fashion',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/makeup.png',
                                scale: 2,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Center(
                                child: Text(
                                  'Beauty',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(16),
                    height: 140,
                    child: const CategoriesSlider()),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black87,
                  child: const Center(
                      child: Text(
                    'Sign Up For Exciting Deals !',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red.shade50,
                    padding: EdgeInsets.all(18),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.shade200,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New User',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text('Flat 200/- off')
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 80,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.shade100,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Apply Promo Code',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text('USER2502',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                    color: Colors.blue.shade50,
                    padding: const EdgeInsets.all(8),
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: const AdvertiseCarousel()),
                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(115, 50),
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadowColor: Colors.teal.shade50),
                          child: Row(
                            children: [
                              Icon(
                                Icons.gpp_good,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text('100% Orignal\nProducts',
                                  style: TextStyle(
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(117, 50),
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadowColor: Colors.teal.shade50),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.price_check_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text('Free Shipping\nOn 1st Order',
                                  style: TextStyle(
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(115, 50),
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadowColor: Colors.teal.shade50),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.delivery_dining_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text('Easy returns\n& Refund',
                                  style: TextStyle(
                                      fontSize: 9.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    height: 200,
                    width: double.infinity,
                    color: Colors.red.shade50,
                    child: const BrandsSlider()),
                const FeatureSlider(),
                // Container(
                //     padding: const EdgeInsets.all(16),
                //     height: 140,
                //     child: const CategoriesSlider()),
                // Container(
                //     color: Colors.blue.shade50,
                //     padding: const EdgeInsets.all(8),
                //     height: 250,
                //     width: MediaQuery.of(context).size.width,
                //     child: const AdvertiseCarousel()),
                // Container(
                //     height: 120,
                //     width: MediaQuery.of(context).size.width,
                //     color: Colors.red.shade50,
                //     child: Row(
                //       children: [
                //         Container(
                //           height: 80,
                //           width: 225,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(20),
                //             color: Colors.red.shade200,
                //           ),
                //           child: const Column(
                //             children: [
                //               Text(
                //                 'New User',
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold, fontSize: 25),
                //               ),
                //               Text('Flat 200/- off')
                //             ],
                //           ),
                //         ),
                //         const SizedBox(width: 10),
                //         Container(
                //           height: 80,
                //           width: 140,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(20),
                //             color: Colors.red.shade100,
                //           ),
                //           child: const Column(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Text('Apply Promo Code',
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 12,
                //                   )),
                //               Text('USER2502',
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 20))
                //             ],
                //           ),
                //         )
                //       ],
                //     )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
