import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'features_event.dart';
part 'features_state.dart';

class FeaturesBloc extends Bloc<FeaturesEvent, FeaturesState> {
  FeaturesBloc() : super(FeaturesInitial());
  @override
  Stream<FeaturesState> mapEventToState(
    FeaturesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
