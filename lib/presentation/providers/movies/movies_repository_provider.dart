import 'package:app_cinema_full/domain/datasources/movies_datasource.dart';
import 'package:app_cinema_full/domain/repositories/movies_respository.dart';
import 'package:app_cinema_full/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_cinema_full/infrastructure/datasources/moviedb_datasource.dart';

final movieRepositoryProvider = Provider<MoviesRepository>((ref) {
  // final datasource = ref.watch(MoviesDatasource());
  return MovieRepositoryImpl(MoviedbDatasource());
});