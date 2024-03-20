import 'dart:math';

import 'package:mofi/config.dart';
import 'package:mofi/plugin_list.dart';
import 'package:mofi/screens/dashboard/layout/header_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context1, navigation, child) {
      return Scaffold(
        body: MyMainScreen(
          children: [
            MySubScreen(
                screenDimension: DeviceFormat().generateFormatAllDevice(
                    1.55, 1.55, 1.55, 1.55, 1.55, 1.55, 1.55),
                child: const NavigationDrawerMainList()),
            MySubScreen(
                screenDimension: DeviceFormat().generateFormatAllDevice(
                    10.45, 10.45, 10.45, 10.45, 10.45, 10.45, 10.45),
                child: MyMainScreen(
                  children: [
                    const MySubScreen(
                      child: HeaderLayout(),
                    ),
                    MySubScreen(
                      child: Container(
                        color: Colors.orange,
                        child: const Text("nhfksjgsrbg"),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      );
    });
  }
}
/*
Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
MySubScreen(
screenDimension: DeviceFormat().generateFormatAllDevice(
1.55, 1.55, 1.55, 1.55, 1.55, 1.55, 1.55),
child: const NavigationDrawerMainList()),
MySubScreen(
screenDimension: DeviceFormat().generateFormatAllDevice(
10.45, 10.45, 10.45, 10.45, 10.45, 10.45, 10.45),
child: Container(
color: Colors.white,
child: const Text("nhfksjgsrbg"),
))
],
));*/
