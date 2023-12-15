import 'package:coffe_shop/future/home/domain/entity/coffe_entity.dart';
import 'package:coffe_shop/future/home/domain/usecase/coffe_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'coffe_state.dart';

class CoffeCubit extends Cubit<CoffeState> {
  CoffeCubit(this.useCase) : super(CoffeInitial()) {
    init();
  }

  final CoffeUseCase useCase;

  void init() {
    final result = useCase.getCoffe();
    emit(CoffeSucces(coffeList: result));
  }
}
