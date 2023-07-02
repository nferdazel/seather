part of 'weather_cubit.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  const WeatherSuccess(this.data);
  final Data data;

  @override
  List<Object> get props => [data];
}

class WeatherFailed extends WeatherState {
  const WeatherFailed(this.error);
  final String error;

  @override
  List<Object> get props => [error];
}
