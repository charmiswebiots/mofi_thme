import '../config.dart';

class MyMainScreen extends StatelessWidget {
  final List<MySubScreen> children;
  final bool innerDistance;
  final double? distance;
  final double? valueDistance;

  const MyMainScreen({
    super.key,
    required this.children,
    this.innerDistance = false,
    this.distance,
    this.valueDistance,
  });

  final double defaultDistance = Insets.i8;

  @override
  Widget build(BuildContext context) {
    return MyResponsiveLayout(
      builder: (BuildContext context, BoxConstraints constraints,
          visualDisplaySize) {
        double width = constraints.maxWidth;
        List<Widget> list = [];
        WidgetFunction()
            .getSubLayout(visualDisplaySize, children)
            .forEach((lCol) {
          list.addAll(lCol.mapIndexed((index, col) {
            return Container(
              width: WidgetFunction().getScreenDimension(
                width,
                col.screenWidth[visualDisplaySize] ??
                    MonitorWidthSize.verticalSections,
                lCol.length,
                distance ?? defaultDistance,
              ),
              padding: WidgetFunction().getDistance(index, lCol.length,
                  innerDistance, valueDistance, defaultDistance),
              child: col,
            );
          }));
        });
        return Wrap(
          spacing: distance ?? 0.0,
          runSpacing: valueDistance ?? 0.0,
          children: list,
        );
      },
    );
  }
}
