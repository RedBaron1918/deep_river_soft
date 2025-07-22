import 'package:deep_river_soft/src/data/models/sport_model.dart';

class MatchModel {
  final int id;
  final String homeTeam;
  final String awayTeam;
  final int homeTeamScore;
  final int awayTeamScore;
  final DateTime startTime;
  final Map<String, double> odds;
  final SportModel sport;

  MatchModel({
    required this.id,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeTeamScore,
    required this.awayTeamScore,
    required this.startTime,
    required this.odds,
    required this.sport,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    final oddsMap = (json['odds'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    );
    return MatchModel(
      id: json['id'],
      homeTeam: json['homeTeam'],
      awayTeam: json['awayTeam'],
      homeTeamScore: json['homeTeamScore'],
      awayTeamScore: json['awayTeamScore'],
      startTime: DateTime.parse(json['startTime'] as String),
      odds: oddsMap,
      sport: SportModel.fromJson(json['sport'] as Map<String, dynamic>),
    );
  }

  MatchModel copyWith({
    int? id,
    String? homeTeam,
    String? awayTeam,
    int? homeTeamScore,
    int? awayTeamScore,
    DateTime? startTime,
    Map<String, double>? odds,
    SportModel? sport,
  }) {
    return MatchModel(
      id: id ?? this.id,
      homeTeam: homeTeam ?? this.homeTeam,
      awayTeam: awayTeam ?? this.awayTeam,
      homeTeamScore: homeTeamScore ?? this.homeTeamScore,
      awayTeamScore: awayTeamScore ?? this.awayTeamScore,
      startTime: startTime ?? this.startTime,
      odds: odds ?? this.odds,
      sport: sport ?? this.sport,
    );
  }

  String get scoreDisplay => '$homeTeamScore - $awayTeamScore';
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'homeTeam': homeTeam,
      'awayTeam': awayTeam,
      'homeTeamScore': homeTeamScore,
      'awayTeamScore': awayTeamScore,
      'startTime': startTime.toIso8601String(),
      'sport': sport.toJson(),
      'odds': odds,
    };
  }
}
