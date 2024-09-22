part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationState {}

final class BottomNavigationInitial extends BottomNavigationState {}

class RefreshBottomNavBarState extends BottomNavigationState {}
