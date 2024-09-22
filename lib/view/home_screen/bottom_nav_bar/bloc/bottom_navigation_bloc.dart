// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial()) {
    on<BottomNavigationEvent>((event, emit) {
      
    });
    on<RefreshBottomNavBarEvent>(refreshBottomNavBarEvent);
  }

  FutureOr<void> refreshBottomNavBarEvent(
    RefreshBottomNavBarEvent event, Emitter<BottomNavigationState> emit) {
      emit(RefreshBottomNavBarState());
  }
}
