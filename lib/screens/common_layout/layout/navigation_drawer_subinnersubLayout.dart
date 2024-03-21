import '../../../config.dart';

class NavigationDrawerSubInnerSubLayout extends StatelessWidget {
  final InnerList? data;

  const NavigationDrawerSubInnerSubLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context, navigation, child) {
      return InkWell(
          onTap: () => navigation.onSelectInnerSubList(data!.menuSub),
          child: Column(children: [
            NavigationDrawerInnerSublistLayout(data: data),
            if (navigation.isInnerSublistOpen &&
                navigation.innerSubList == data!.menuSub)
              ...data!.subInnerList!
                  .asMap()
                  .entries
                  .map((e) => NavigationDrawerInnerSubListLayout(data: e.value))
          ]));
    });
  }
}
