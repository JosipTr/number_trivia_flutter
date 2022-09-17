// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/domain/usecases/get_random_number_trivia.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetRandomNumberTrivia _getRandomNumberTrivia;

  NumberTriviaBloc(this._getRandomNumberTrivia) : super(NumberTriviaInitial()) {
    on<GetTriviaForRandomNumber>(_onGetRandomNumberTrivia);
  }

  void _onGetRandomNumberTrivia(GetTriviaForRandomNumber event, Emitter<NumberTriviaState> emit) async {
    var either = await _getRandomNumberTrivia.call();
    if (either.isRight()) {
      either.fold((l) => null, (r) => emit(Loaded(r)));
    }
  }
}
