import 'package:coffe_shop/const/theme_color.dart';
import 'package:coffe_shop/future/home/ui/state/cubit/coffe_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.color1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/icon_drawer.png'),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            child: Stack(
              children: [
                Text(
                  'It’s Great',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '                 Day For\nCoffee',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFFB98875),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child:
                BlocBuilder<CoffeCubit, CoffeState>(builder: (context, state) {
              return switch (state) {
                CoffeInitial => const CircularProgressIndicator(),
                CoffeError => const SizedBox(),
                CoffeSucces(:final coffeList) => ListView.builder(
                    itemCount: coffeList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            context.goNamed('itemCoffe',
                                extra: coffeList[index]);
                          },
                          child: ListTile(
                            leading: Image.asset(
                              "assets/${coffeList[index].iconPath}",
                              width: 50,
                              height: 50,
                            ),
                            title: Text(coffeList[index].name),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFBB5900),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                _ => const Center(
                    child: Text('Ошибка'),
                  ),
              };
            }),
          )
        ],
      ),
    );
  }
}
