import 'package:hydrated_bloc/hydrated_bloc.dart';

class CartCubit extends HydratedCubit<int> {
  // Initialize with 0
  CartCubit() : super(0);

  void increment() => emit((state + 1) % 11); // cannot add more than 10 items
  void decrement() {
    if (state > 0) emit(state - 1);
  }

  @override
  int? fromJson(Map<String, dynamic> json) {
    return json['count'] as int;
  }

  @override
  Map<String, dynamic>? toJson(int state) {
    return {'count': state};
  }
}
