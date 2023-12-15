import 'package:coffe_shop/future/home/data/model/coffe_dto.dart';
import 'package:coffe_shop/future/home/domain/entity/coffe_entity.dart';

extension CoffeMapper on CoffeDTO {
  CoffeEntity toEntity() {
    return CoffeEntity(name: name, iconPath: iconPath, cost: cost);
  }
}
