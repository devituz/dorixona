import 'package:dorixona/constants/Colors/colors.dart';
import 'package:dorixona/list/mahsulotlar/model.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final Product product;
  final Analog? analog;


  const  ProductPage({Key? key, required this.product , required this.analog}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9faff),
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                      widget.product.img), // replace with your image path
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${(widget.product.price / 12).toStringAsFixed(2)} so'm/oyiga",
                            style:
                                const TextStyle(fontSize: 16, color: Colors.orange),
                          ),
                          const Spacer(),
                          Text(
                            "${widget.product.price.toString()} so'm",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        widget.product.name.toString(),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      TabBar(
                        controller: _tabController,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.blue,
                        tabs: [
                          const Tab(text: "Ma'lumot"),
                          const Tab(text: 'Muqobillar (analog)'),
                          const Tab(text: 'Dastavka'),
                        ],
                      ),
                      Container(
                        height: 300, // Adjust height as needed
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            _buildInfoTab(),
                            _buildAnalogTab(),
                            _builddastavkaTab(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                // Add spacing to avoid content being hidden behind the fixed button
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width, // Responsive width
              color: Colors.white, // Adjust background color if needed
              padding: const EdgeInsets.all(16.0),

              child: SizedBox(
                width: 200.0, // Set the desired width
                height: 50.0, // Set the desired height
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF397DE0),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Text(
                    'Buyurtma berish',
                    style: TextStyle(color: AppColors.oq),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTab() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Kategoriyasi',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
           widget.product.category,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Ishlab chiqaruvchi',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.product.company.toString(),
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Ishlab chiqargan davlat',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.product.from,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildAnalogTab() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: widget.product.analogs.length,
      itemBuilder: (context, index) {
        final analog = widget.product.analogs[index]; // Access the analog item safely

        // Print statements to debug
        print("Analog: ${analog.name}");
        print("Analog Price: ${analog.price}");

        return Card(
          color: Colors.white,
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  analog.img,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        analog.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                       "${ analog.price.toString()} so'm",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                       Row(
                        children: [
                          Text(
                            "${(analog.price / 12).toStringAsFixed(2)} so'm/oyiga",
                            style:
                            const TextStyle(fontSize: 16, color: Colors.orange),
                          ),
                          SizedBox(width: 4.0),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget _builddastavkaTab() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Yetkazib berish xizmati +998 94 067 94 01',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

}

