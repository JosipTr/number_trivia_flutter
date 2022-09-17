import 'package:get_it/get_it.dart';
import 'package:number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:http/http.dart' as http;

import 'data/repositories/number_trivia_repository_impl.dart';

final sl = GetIt.instance;


Future<void> init() async {

  //Bloc
  sl.registerFactory(() => NumberTriviaBloc(sl()));

  //UseCases
  sl.registerLazySingleton(() => GetRandomNumberTrivia(sl()));

  //Repository
  sl.registerLazySingleton<NumberTriviaRepository>(() => NumberTriviaRepositoryImpl(sl()));

  sl.registerLazySingleton<NumberTriviaRemoteDataSource>(() => NumberTriviaRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton(() => http.Client());
}