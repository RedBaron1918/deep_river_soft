import 'package:deep_river_soft/core/models/sport_model.dart';

class MatchModel {
  final String id;
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
    return MatchModel(
      id: json['id'],
      homeTeam: json['homeTeam'],
      awayTeam: json['awayTeam'],
      homeTeamScore: json['homeTeamScore'],
      awayTeamScore: json['awayTeamScore'],
      startTime: DateTime.parse(json['startTime'] as String),
      odds: json['odds'],
      sport: SportModel.fromJson(json['sport'] as Map<String, dynamic>),
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
      'odds': odds,
    };
  }
}
