enum DisplayCategory {
  none("none"),
  slice("slice");

  final String screenDisplayName;

  const DisplayCategory(this.screenDisplayName);

  bool get isSlice => this == DisplayCategory.slice;

  static DisplayCategory fromString(String text) {
    return text == DisplayCategory.none.screenDisplayName
        ? DisplayCategory.none
        : DisplayCategory.slice;
  }
}
