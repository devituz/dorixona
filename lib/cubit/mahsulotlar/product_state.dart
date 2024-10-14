// lib/cubit/product_state.dart

import 'package:dorixona/list/mahsulotlar/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitial;
  const factory ProductState.loading() = ProductLoading;
  const factory ProductState.loaded(List<Product> products) = ProductLoaded;
  const factory ProductState.error(String message) = ProductError;
}
