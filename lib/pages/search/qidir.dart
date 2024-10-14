import 'package:dorixona/list/mahsulotlar/model.dart';
import 'package:dorixona/list/mahsulotlar/product_service.dart';
import 'package:dorixona/pages/product/product.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/Colors/colors.dart';

class Qidir extends StatefulWidget {
  const Qidir({super.key});

  @override
  State<Qidir> createState() => _QidirState();
}

class _QidirState extends State<Qidir> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();
  late SharedPreferences _prefs;
  List<String> _searchHistory = [];
  List<Map<String, dynamic>> _searchResults = []; // Updated type to store both product and analog
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
    _loadSearchHistory();
  }

  Future<void> _loadSearchHistory() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _searchHistory = _prefs.getStringList('searchHistory') ?? [];
    });
  }

  Future<void> _saveSearchHistory(String query) async {
    _searchHistory.remove(query); // Remove duplicates
    _searchHistory.insert(0, query);
    if (_searchHistory.length > 10) {
      // Limit to 10 items
      _searchHistory.removeLast();
    }
    await _prefs.setStringList('searchHistory', _searchHistory);
  }

  Future<void> _performSearch(String query) async {
    setState(() {
      _isLoading = true;
    });

    // Fetch products
    final productService = ProductService();
    final products = await productService.fetchProducts();

    // Filter products based on query
    final results = products.where((product) {
      final matchesProductName =
      product.name.toLowerCase().contains(query.toLowerCase());
      final matchesAnalogsName = product.analogs.any(
              (analog) => analog.name.toLowerCase().contains(query.toLowerCase()));
      return matchesProductName || matchesAnalogsName;
    }).map((product) {
      if (product.name.toLowerCase().contains(query.toLowerCase())) {
        return {'product': product, 'match': 'product'};
      } else {
        final matchingAnalog = product.analogs.firstWhere((analog) =>
            analog.name.toLowerCase().contains(query.toLowerCase()));
        return {
          'product': product,
          'match': 'analog',
          'analog': matchingAnalog
        };
      }
    }).toList();

    setState(() {
      _searchResults = results;
      _isLoading = false;
    });

    // Save query to history
    await _saveSearchHistory(query);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9faff),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.oq,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          controller: _searchController,
                          textInputAction: TextInputAction.search,
                          focusNode: _focusNode,
                          onSubmitted: (query) {
                            _performSearch(query);
                          },
                          decoration: const InputDecoration(
                            hintText: 'Dori nomi',
                            hintStyle: TextStyle(color: AppColors.icon_colors1),
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search,
                              color: AppColors.icon_colors1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Column(
                        children: [
                          Text(
                            "Bekor",
                            style: TextStyle(color: AppColors.icon_colors1),
                          ),
                          Text(
                            "qilish",
                            style: TextStyle(color: AppColors.icon_colors1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 30,
                  width: 325,
                  child: Row(
                    children: [
                      const Text(
                        "So'rovlar tarixi",
                        style: TextStyle(
                          color: Color(0xFF1C2C45),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _searchHistory.clear();
                            _prefs.setStringList(
                                'searchHistory', _searchHistory);
                          });
                        },
                        child: const Icon(
                          Icons.close,
                          color: Color(0xFF1C2C45),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
        children: [
          ..._searchHistory.map((query) => ListTile(
            title: Text(query),
            onTap: () {
              _searchController.text = query;
              _performSearch(query);
            },
          )),
          ..._searchResults.map((result) {
            final product = result['product'] as Product;
            final analog = result.containsKey('analog')
                ? result['analog'] as Analog
                : null;
            return ListTile(
              title: Text(product.name),
              subtitle: Text('${product.price}'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductPage(
                    product: product,
                    analog: analog,
                  ),
                ));
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}