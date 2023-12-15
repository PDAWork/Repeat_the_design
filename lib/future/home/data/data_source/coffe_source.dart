import 'package:coffe_shop/future/home/data/model/coffe_dto.dart';

const jsonMok = [
  {
    "name": "Espresso",
    "icon_path": "espresso.png",
    "cost": 2.0,
  },
  {
    "name": "Cappucion",
    "icon_path": "cappuccino.png",
    "cost": 5.0,
  },
  {
    "name": "Macciato",
    "icon_path": "macciato.png",
    "cost": 10.0,
  },
  {
    "name": "Mocha",
    "icon_path": "mocha.png",
    "cost": 15.0,
  },
  {
    "name": "Latte",
    "icon_path": "latte.png",
    "cost": 20.0,
  },
];

class CoffeSource {
  List<CoffeDTO> getCoffe() {
    return jsonMok.map((e) => CoffeDTO.from(e)).toList();
  }
}
