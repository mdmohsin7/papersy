import 'package:flutter/widgets.dart';

class UpdateNavBar {
  final ValueNotifier<int> index = ValueNotifier<int>(0);

  void changeNavBarItemIndex(int changedIndex) {
    index.value = changedIndex;
  }
}
