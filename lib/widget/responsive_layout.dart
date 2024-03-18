import '../config.dart';

class MyResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context, BoxConstraints constraints,
      VisualDisplaySize visualDisplaySize) builder;

  const MyResponsiveLayout({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => builder(
            context,
            constraints,
            MonitorWidthSize.getFetchDisplayScreenWidth(
                MediaQuery.of(context).size.width)));
  }
}
