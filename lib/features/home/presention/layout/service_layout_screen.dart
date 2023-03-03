import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/core/utils/styles/icon_broken.dart';
import 'package:service_app/features/home/presention/layout/cubit/cubit.dart';
import 'package:service_app/features/home/presention/layout/cubit/states.dart';

class ServiceLayout extends StatelessWidget {
  const ServiceLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServiceCubit, ServiceStates>(
       listener: (context, state) {
       },
        builder: (context, state) {
          var cubit = ServiceCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index){
                cubit.changeBottom(index);
              },
              currentIndex: cubit.currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                      Icons.home_filled,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                  label: 'Order',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_rounded,
                    ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu,
                    ),
                  label: 'Menu',
                ),
              ],
            ),
          );
        },
       );
  }
}
