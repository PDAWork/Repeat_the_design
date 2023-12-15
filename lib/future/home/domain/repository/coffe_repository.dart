import 'package:coffe_shop/future/home/domain/entity/coffe_entity.dart';

abstract interface class CoffeRepository {
  List<CoffeEntity> getCoffe();
}
