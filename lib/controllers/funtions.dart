import 'package:bw_week_one_e_commerce/view/home_screen/bottom_nav_bar/bloc/bottom_navigation_bloc.dart';

int selectedBottomNavIndex = 0;
BottomNavigationBloc bottomNavigationRefreshBlocInstance = BottomNavigationBloc();

void onBottomNavItemTapped(int index) {
  selectedBottomNavIndex = index;
  bottomNavigationRefreshBlocInstance.add(RefreshBottomNavBarEvent());
}