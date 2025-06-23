enum SportType { football, basketball, mma, esports }

class SportModel {
  final String name;
  final SportType type;

  SportModel({required this.name, required this.type});

  factory SportModel.fromJson(Map<String, dynamic> json) {
    return SportModel(name: json['name'], type: SportType.values[json['type']]);
  }
}
