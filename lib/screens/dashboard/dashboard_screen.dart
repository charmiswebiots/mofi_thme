import 'package:mofi/config.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyMainScreen(
          children: [
            MySubScreen(
                screenDimension: DeviceFormat().generateFormatAllDevice(
                    1.55, 1.55, 1.55, 1.55, 1.55, 1.55, 1.55),
                child: const DashboardDrawerList()),
            MySubScreen(
                screenDimension: DeviceFormat().generateFormatAllDevice(
                    10.45, 10.45, 10.45, 10.45, 10.45, 10.45, 10.45),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Text("nhfksjgsrbg"),
                ))
          ],
        ),
      ),
    );
  }
}
