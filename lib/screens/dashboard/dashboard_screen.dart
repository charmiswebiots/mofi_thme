import 'package:mofi/config.dart';
import 'package:mofi/routes/index.dart';
import 'package:mofi/widget/device_format.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyMainScreen(
          children: [
            MySubScreen(
                screenDimension:
                    DeviceFormat().generateFormatAllDevice(1.55, 1.55, 1.55, 1.55, 1.55, 1.55, 1.55),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: appColor(context).appTheme.sidebarColor,
                )),
            MySubScreen(
                screenDimension: DeviceFormat()
                    .generateFormatAllDevice(10.45, 10.45, 10.45, 10.45, 10.45, 10.45, 10.45),
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
