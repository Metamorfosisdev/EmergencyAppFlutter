import 'package:flutter/material.dart';

import 'package:emergency_app/widgets/widgets.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeInLeft(
            child: Column(
              children: [
                const HeaderWidget(),
                CustomButtomWidget(
                  icon: Icons.safety_check,
                  color1: Colors.grey,
                  color2: Colors.indigo,
                  text: 'Hmmm, Gracioso',
                  onPressed: () {
                    print('extrano');
                  },
                ),
                CustomButtomWidget(
                  color1: Colors.blue,
                  color2: Colors.purple,
                  icon: Icons.ac_unit_rounded,
                  text: 'Pero no gracioso de risa',
                  onPressed: () {
                    print('extrano');
                  },
                ),
                CustomButtomWidget(
                  color1: Colors.green,
                  color2: Colors.orange,
                  icon: Icons.sports_bar,
                  text: 'Gracioso de raro',
                  onPressed: () {
                    print('extrano');
                  },
                ),
                CustomButtomWidget(
                  color1: Colors.green,
                  color2: Colors.orange,
                  icon: Icons.sports_bar,
                  text: 'Gracioso de raro',
                  onPressed: () {
                    print('extrano');
                  },
                ),
                CustomButtomWidget(
                  color1: Colors.green,
                  color2: Colors.orange,
                  icon: Icons.sports_bar,
                  text: 'Gracioso de raro',
                  onPressed: () {
                    print('extrano');
                  },
                ),
                CustomButtomWidget(
                  color1: Colors.green,
                  color2: Colors.orange,
                  icon: Icons.sports_bar,
                  text: 'Gracioso de raro',
                  onPressed: () {
                    print('extrano');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
