import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/features/home/presention/layout/cubit/states.dart';
import 'package:service_app/features/home/presention/widgets/main/home_screen.dart';
import 'package:service_app/features/home/presention/widgets/menu/menu_screen.dart';
import 'package:service_app/features/home/presention/widgets/orders/order_screen.dart';
import 'package:service_app/features/home/presention/widgets/profile/profile_screen.dart';

class ServiceCubit extends Cubit<ServiceStates>
{
  ServiceCubit() : super(ServiceInitialStates());
  static ServiceCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
    ProfileScreen(),
    MenuScreen(),
  ];
  List<String> titles = [
    'Home',
    'Orders',
    'Profile',
    'Menu',
  ];

  void changeBottom(int index) {
    currentIndex = index;
   emit(ServiceChangeBottomNavState());
  }

}
