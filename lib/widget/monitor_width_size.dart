import '../config.dart';

class MonitorWidthSize {
  static double verticalSections = 12;
  static double distance = 24;
  static String? screenDimension;

  static VisualDisplaySize getFetchDisplayScreenWidth(
      double screenWidthMeasurement) {
    var types = VisualDisplaySize.values.toList();
    types.sort((a, b) => a.screenResolution.compareTo(b.screenResolution));
    for (var i = 0; i < types.length; i++) {
      if (screenWidthMeasurement < types[i].screenResolution) {
        return types[i];
      }
    }
    return VisualDisplaySize.extraLargeScreen;
  }

  static Map<VisualDisplaySize, T> getRetrieveFullScreenSize<T>(
      Map<VisualDisplaySize, T>? mapSize, T defaultValue,
      [bool backWard = false]) {
    mapSize ??= {};
    List list = VisualDisplaySize.values;
    Map<VisualDisplaySize, T> screenSizeMap = {};

    int start = backWard ? list.length - 1 : 0;
    int end = backWard ? -1 : list.length;
    int step = backWard ? -1 : 1;

    T? previousValue;

    for (var i = start; i != end; i += step) {
      var screenSize = list[i];
      var value = mapSize[screenSize];
      if (value != null) {
        previousValue = value;
      } else {
        value = previousValue ?? defaultValue;
      }
      screenSizeMap[screenSize] = value!;
    }
    return screenSizeMap;
  }

  static Map<VisualDisplaySize, double> getSizeFlexibilityMapping(
      String? screenDisplaySize) {
    screenDisplaySize ??= "";
    Map<VisualDisplaySize, double> displayDimensionMap = {};
    List<String> details = screenDisplaySize.split(" ");
    for (String item in details) {
      VisualDisplaySize? matchedType;
      for (var type in VisualDisplaySize.values) {
        if (item.contains(type.visualDisplayName)) {
          matchedType = type;
          break;
        }
      }
      if (matchedType != null) {
        double? rangeWidth = double.tryParse(item.split("-").last);
        if (rangeWidth != null) {
          displayDimensionMap[matchedType] = rangeWidth;
        }
      }
    }
    return getRetrieveFullScreenSize(
        displayDimensionMap, MonitorWidthSize.verticalSections);
  }

  static Map<VisualDisplaySize, DisplayCategory> getGetDisplayFromText(
      String? screenDisplayType) {
    screenDisplayType ??= "";

    Map<VisualDisplaySize, DisplayCategory> displayDimensionMap = {};
    List<String> details = screenDisplayType.split(" ");
    for (String item in details) {
      for (var type in VisualDisplaySize.values) {
        if (item.contains(type.visualDisplayName)) {
          DisplayCategory displayType =
          DisplayCategory.fromString(item.split("-").last);
          displayDimensionMap[type] = displayType;
          break;
        }
      }
    }
    return getRetrieveFullScreenSize(
        displayDimensionMap, DisplayCategory.slice);
  }

}
extension IterableIndexed<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int index, E item) f) sync* {
    var index = 0;
    for (var item in this) {
      yield f(index, item);
      index++;
    }
  }
}