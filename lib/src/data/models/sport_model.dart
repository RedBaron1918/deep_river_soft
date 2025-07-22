enum SportType {
  all,
  football,
  rugby,
  basketball,
  tennis,
  boxing;

  String get key => name;

  String get displayName {
    return switch (this) {
      SportType.all => 'All',
      SportType.football => 'Football',
      SportType.rugby => 'Rugby',
      SportType.basketball => 'Basketball',
      SportType.tennis => 'Tennis',
      SportType.boxing => 'Boxing',
    };
  }

  String get emoji {
    return switch (this) {
      SportType.all => '🏆',
      SportType.football => '⚽️',
      SportType.rugby => '🏉',
      SportType.basketball => '🏀',
      SportType.tennis => '🎾',
      SportType.boxing => '🥊',
    };
  }
}

class SportModel {
  final String name;
  final SportType type;

  SportModel({required this.name, required this.type});

  factory SportModel.fromJson(Map<String, dynamic> json) {
    return SportModel(
      name: json['name'],
      type: SportType.values.firstWhere(
        (e) => e.key == json['type'].toString(),
        orElse: () => throw Exception('Unknown sport type'),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'type': type.name};
  }
}
