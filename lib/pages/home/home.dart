import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorixona/constants/Colors/colors.dart';
import 'package:dorixona/cubit/mahsulotlar/product_state.dart';
import 'package:dorixona/pages/product/product.dart';
import 'package:dorixona/pages/search/qidir.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/mahsulotlar/product_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> _refresh() async {
    // Your refresh logic here
    await Future.delayed(Duration(milliseconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9faff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
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
              padding: const EdgeInsets.only(top: 30, right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
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
                        width: 45,
                        height: 45,
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
                  const SizedBox(height: 15),
                  const Text(
                    'Dorixonalardan izlash',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Qidir(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: AppColors.icon_colors1,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Dori nomi",
                                style: TextStyle(
                                  color: AppColors.icon_colors1,
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        // Ensure it can always be scrolled to refresh
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                // 1 soniyada almashish

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
              children: [
                const Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Ommabop dorilar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF172c3f),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  // color: Colors.cyanAccent,
                  width: 340,
                  child: BlocBuilder<ProductCubit, ProductState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () =>
                            Center(child: Text('Fetching products...')),
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                        loaded: (products) => GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of columns
                            crossAxisSpacing: 10.0, // Horizontal spacing
                            mainAxisSpacing: 10.0, // Vertical spacing
                            childAspectRatio: 0.9, // Aspect ratio of each item

                          ),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final product = products[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                      product: product,
                                      analog: null, // Pass the analog object here if needed
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // Hamma tomoniga border radius
                                  color: const Color(0xffffffff),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      product.img,
                                      height: 100,
                                    ),
                                    Container(
                                      // color: Colors.red,
                                      width: 130,
                                      child:  Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            product.name,
                                            overflow: TextOverflow.ellipsis,
                                            // Matn uzun bo'lsa ... qorinishida chiqadi
                                            maxLines: 1, // Faqat bir qator
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                (product.price / 12).toStringAsFixed(2),

                                                style: TextStyle(
                                                    color: AppColors.icon_colors1),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "so'm/oyiga",
                                                style: TextStyle(
                                                    color: AppColors.icon_colors1),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 5,),
                                          Row(
                                            children: [
                                              Text(
                                                product.price.toString(),
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "so'm",
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        error: (message) => Center(
                          child: Text(message),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
