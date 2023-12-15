class CoffeDTO {
  final String name;
  final String iconPath;
  final double cost;

  CoffeDTO({
    required this.name,
    required this.iconPath,
    required this.cost,
  });

  factory CoffeDTO.from(Map<String, dynamic> json) {
    return CoffeDTO(
      name: json['name'],
      iconPath: json['icon_path'],
      cost: json['cost'],
    );
  }
}
