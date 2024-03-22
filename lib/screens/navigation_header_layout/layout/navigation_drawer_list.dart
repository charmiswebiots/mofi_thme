import '../../../config.dart';

class NavigationDrawerList extends StatelessWidget {
  final SubList? data;
  const NavigationDrawerList({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationDrawerProvider>(
        builder: (context, navigation, child) {
      return InkWell(
          onTap: () => navigation.onSelectSublist(data!,context),
          child: Column(children: [
            //sublist layout design for list
            NavigationDrawerSubList(data: data),
            //click able in inner list call
            if (navigation.isSublistOpen && navigation.subList == data!.subTitle)
              ...data!.innerList!
                  .asMap()
                  .entries
              //sublist in inner list call layout
                  .map((e) => NavigationDrawerSubInnerSubLayout(
                        data: e.value,
                      ))
          ]));
    });
  }
}