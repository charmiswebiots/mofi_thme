import '../../../config.dart';
import '../../../plugin_list.dart';

class NavigationIconListLayout extends StatelessWidget {
  final SubList? data;
  const NavigationIconListLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      //sublist model in icon data display
        padding: const EdgeInsets.symmetric(vertical: Insets.i10),
        child: Transform.scale(
            scale: 0.85,
            child: SvgPicture.asset(data!.icon.toString(),
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                    appColor(context).appTheme.white, BlendMode.srcIn))));
  }
}
