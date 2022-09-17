import 'package:number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource _numberTriviaRemoteDataSource;

  NumberTriviaRepositoryImpl(this._numberTriviaRemoteDataSource);

  @override
  Future<Either<Exception, NumberTrivia>> getRandomNumberTrivia() async {
    try {
      return Right(await _numberTriviaRemoteDataSource.getRandomNumberTrivia());
    } catch (e) {
      return Left(Exception());
    }
  }
  
  @override
  Future<Either<Exception, NumberTrivia>> getConcreteNumberTrivia(int number) async{
    try{
      return Right(await _numberTriviaRemoteDataSource.getConcreteNumberTrivia(number));
    } catch (e) {
      return Left(Exception());
    }
  }
}