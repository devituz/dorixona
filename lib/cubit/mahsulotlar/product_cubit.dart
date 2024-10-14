// lib/cubit/product_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:dorixona/list/mahsulotlar/product_service.dart';

import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductService _productService;

  ProductCubit(this._productService) : super(const ProductState.initial()) {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      emit(const ProductState.loading());
      final products = await _productService.fetchProducts();
      emit(ProductState.loaded(products));
    } catch (e) {
      print('Error occurred: $e');  // Xatolikni konsolga chiqarish

      emit(ProductState.error(e.toString()));  // Xatolik haqidagi to'liq ma'lumotni yuboring
    }
  }
}
