import '../config.dart';

class WidgetFunction {

  List<List<MySubScreen>> getSubLayout(VisualDisplaySize type, children) {
    List<List<MySubScreen>> groupedItems = [];
    List<MySubScreen> currentGroup = [];
    double currentFlexCount = 0;

    for (MySubScreen item in children) {
      if (item.screenName[type]!.isSlice) {
        double itemFlex = item.screenWidth[type]!;
        if (currentFlexCount + itemFlex <= 12 || currentGroup.isEmpty) {
          currentGroup.add(item);
          currentFlexCount += itemFlex;
        } else {
          groupedItems.add(currentGroup);
          currentGroup = [item];
          currentFlexCount = itemFlex;
        }
      }
    }
    if (currentGroup.isNotEmpty) {
      groupedItems.add(currentGroup);
    }
    return groupedItems;
  }

  double getScreenDimension(double width, double flex, int items, double space) {
    return (width * flex / MonitorWidthSize.verticalSections).floorToDouble();
  }

  EdgeInsets getDistance(
      int index, int length, innerDistance, distance, defaultDistance) {
    if (innerDistance) {
      return EdgeInsets.symmetric(
          horizontal: (distance ?? defaultDistance) / 2);
    } else {
      return EdgeInsets.fromLTRB(
        index == 0 ? 0 : (distance ?? defaultDistance) / 2,
        0,
        index == length - 1 ? (distance ?? defaultDistance) / 2 : 0,
        0,
      );
    }
  }
}
