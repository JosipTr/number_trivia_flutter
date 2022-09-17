import 'package:dartz/dartz.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia {
  final NumberTriviaRepository _repository;

  GetRandomNumberTrivia(this._repository);

  Future<Either<Exception, NumberTrivia>> call() async {
    return await _repository.getRandomNumberTrivia();
  }
}