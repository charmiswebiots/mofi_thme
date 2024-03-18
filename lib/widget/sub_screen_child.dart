import '../config.dart';

class MySubScreen extends StatelessWidget {
  final Widget child;
  final String? screenDimension;
  final String? screenLayout;

  const MySubScreen({
    super.key,
    required this.child,
    this.screenDimension,
    this.screenLayout,
  });

  get screenWidth =>
      screenWidthFetch(screenDimension ?? "");

  get screenName =>
      screenWidthName(screenLayout ?? "");

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
