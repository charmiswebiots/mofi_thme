import '../config.dart';
import '../plugin_list.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: Insets.i10),
      width: MediaQuery.of(context).size.width * 0.15,
      height: Sizes.s40,
      child: TextField(
          decoration: InputDecoration(
              hintText: appFonts.search,
              hintStyle: TextStyle(
                color: appColor(context).appTheme.fontColor,
                fontSize: Sizes.s12,
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Insets.i12, vertical: Insets.i10),
              fillColor: appColor(context).appTheme.containerCircleColor,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(AppRadius.r25)),
              ),
              prefixIcon: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(svgAssets.iconSearch,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                          appColor(context).appTheme.fontColor,
                          BlendMode.srcIn))
                      .paddingSymmetric(horizontal: Insets.i12,vertical: Insets.i10)))),
    );
  }
}