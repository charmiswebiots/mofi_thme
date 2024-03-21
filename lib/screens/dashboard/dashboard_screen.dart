import 'package:mofi/screens/common_layout/headernav_layout.dart';
import '../../config.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderNavLayout(
          child: SingleChildScrollView(
        child: Container(
          height: 200,
          color: Colors.orange,
        ),
      )),
    );
  }
}
