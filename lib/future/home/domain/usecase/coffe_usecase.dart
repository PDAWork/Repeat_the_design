import 'package:coffe_shop/future/home/domain/entity/coffe_entity.dart';
import 'package:coffe_shop/future/home/domain/repository/coffe_repository.dart';

class CoffeUseCase {
  final CoffeRepository repository;

  CoffeUseCase({required this.repository});

  List<CoffeEntity> getCoffe() {
    return repository.getCoffe();
  }
}
