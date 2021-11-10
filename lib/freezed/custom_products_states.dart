import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_generator_test/models/movie/full_movie.dart';

part 'custom_products_states.freezed.dart';

@freezed
class CustomProductsEvent with _$CustomProductsEvent {
  const CustomProductsEvent._();

  const factory CustomProductsEvent.fetchProducts() =
  FetchCustomProductsEvent;
}

@freezed
class CustomProductsState with _$CustomProductsState {
  const CustomProductsState._();

  const factory CustomProductsState.initial() =
  InitialCustomProductsState;

  const factory CustomProductsState.loading() =
  LoadingCustomProductsState;

  const factory CustomProductsState.paginating(
      Iterable<FullMovie> products) = PaginatingCustomProductsState;

  const factory CustomProductsState.error(Error error) =
  ErrorCustomProductsState;

  const factory CustomProductsState.loaded(
      Iterable<FullMovie> products, bool hasReachedMax) =
  LoadedCustomProductsState;

  const factory CustomProductsState.loadedEmpty() =
  LoadedEmptyCustomProductsState;
}
