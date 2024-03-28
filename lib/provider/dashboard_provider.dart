import 'package:flutter/cupertino.dart';

class DashBoardProvider with ChangeNotifier{
  ValueNotifier<bool> isOpen = ValueNotifier(true);
  bool isHover = false;
}