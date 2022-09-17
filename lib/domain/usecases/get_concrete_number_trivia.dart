import 'package:dartz/dartz.dart';
import 'package:number_trivia/domain/repositories/number_trivia_repository.dart';

import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository _repository;

  GetConcreteNumberTrivia(this._repository);

  Future<Either<Exception, NumberTrivia>> getConcreteNumberTrivia(int number) async {
    return await _repository.getConcreteNumberTrivia(number);
  }
}