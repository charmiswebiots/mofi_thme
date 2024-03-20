import 'package:mofi/screens/dashboard/layout/navigation_drawer_subinnersubLayout.dart';
import '../../../config.dart';

class NavigationDrawerList extends StatelessWidget {
  final dynamic data;
  const NavigationDrawerList({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context, navigation, child) {
      return InkWell(
          onTap: () => navigation.onSelectSublist(data.subTitle),
          child: Column(children: [
            NavigationDrawerSubList(data: data),
            if (navigation.isSublistOpen && navigation.subList == data.subTitle)
              ...data.innerList!
                  .asMap()
                  .entries
                  .map((e) => NavigationDrawerSubInnerSubLayout(
                        data: data.innerList![e.key],
                      ))
          ]));
    });
  }
}
