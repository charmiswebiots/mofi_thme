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
            //inner list layout design for display
            NavigationDrawerInnerSublistLayout(data: data),
            //inner list in sub inner data that time call this list layout
            if (navigation.isInnerSublistOpen &&
                navigation.innerSubList == data!.menuSub)
              ...data!.subInnerList!
                  .asMap()
                  .entries
                  //inner in sub inner list layout call
                  .map((e) => NavigationDrawerInnerSubListLayout(data: e.value))
          ]));
    });
  }
}
