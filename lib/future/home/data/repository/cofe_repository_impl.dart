import 'package:coffe_shop/future/home/data/data_source/coffe_source.dart';
import 'package:coffe_shop/future/home/data/mapper/coffe_mapper.dart';
import 'package:coffe_shop/future/home/domain/entity/coffe_entity.dart';
import 'package:coffe_shop/future/home/domain/repository/coffe_repository.dart';

class CoffeRepositoryImpl implements CoffeRepository {
  final CoffeSource coffeSource;

  CoffeRepositoryImpl({required this.coffeSource});

  @override
  List<CoffeEntity> getCoffe() {
    final result = coffeSource.getCoffe();
    return result.map((e) => e.toEntity()).toList();
  }
}
