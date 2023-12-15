part of 'coffe_cubit.dart';

@immutable
sealed class CoffeState {}

final class CoffeInitial extends CoffeState {}

final class CoffeSucces extends CoffeState {
  final List<CoffeEntity> coffeList;
  CoffeSucces({required this.coffeList});
}

final class CoffeError extends CoffeState {}
