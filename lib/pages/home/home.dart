import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorixona/constants/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9faff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: AppColors.oq,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Colors.blue, // Set the background color here
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // Shaklning radiusi
                          border: Border.all(
                            color: Colors.white, // Chiziq rangi
                            width: 1, // Chiziqning kengligi
                          ),
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Sizning joylashuvingiz\nO'zbekiston bo'ylab,",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // Shaklning radiusi
                          border: Border.all(
                            color: Colors.white, // Chiziq rangi
                            width: 1, // Chiziqning kengligi
                          ),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Dorixonalardan izlash',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Dori nomi',
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color:  Color(0xFFEAEAEC), // Chiziq rangi
                      width: 1, // Chiziqning kengligi
                    ),
                  ),
                  height: 100,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 80,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jarayonda",
                              style: TextStyle(
                                color: Color(0xFF8F9299),
                              ),
                            ),
                            Text(
                              "0 So'm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0E2946),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff03103a),
                  ),
                  height: 100,
                  width: 170,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Keshbek balansi",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              "0 So'm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
              items: [
                'assets/banner/photo_2024-07-16_10-25-50.jpg',
                'assets/banner/photo_2024-07-16_10-25-50.jpg',
                'assets/banner/photo_2024-07-16_10-25-50.jpg',
                // Add more images here as needed
              ]
                  .map((item) => Container(
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: 330,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    SizedBox(width: 20), // 2 pixels of empty space
                    Text(
                      "Ommabop mahsulotlar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF172c3f),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                  // Set a fixed height for your horizontal ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // Horizontal scroll direction
                    itemCount: 20,
                    // Number of items in your list
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // Hamma tomoniga border radius
                          color: const Color(0xffffffff),
                        ),
                        width: 120,
                        // Har bir elementning kengligi,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        // Elementlar orasidagi bo'sh joy
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/dorilae/bg-img.png',
                              height: 70,
                            ),
                            const SizedBox(
                              width: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Muxlisa opa yaxshimi",
                                    overflow: TextOverflow.ellipsis,
                                    // Matn uzun bo'lsa ... qorinishida chiqadi
                                    maxLines: 1, // Faqat bir qator
                                  ),
                                  Text(
                                    "bo'lurami",
                                    overflow: TextOverflow.ellipsis,
                                    // Matn uzun bo'lsa ... qorinishida chiqadi
                                    maxLines: 1, // Faqat bir qator
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Color(0xfffbaa10),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Color(0xfffbaa10),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Color(0xfffbaa10),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Color(0xfffbaa10),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Color(0xfffbaa10),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "4.9/5",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "55000",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "so'm",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
