import '../config.dart';
import '../plugin_list.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    //search layout

    return Container(
      margin: const EdgeInsets.only(right: Insets.i10),
      width: MediaQuery.of(context).size.width * 0.13,
      height: Sizes.s40,
      child: TextField(
          decoration: InputDecoration(
              hintText: language(context, appFonts.search),
              hintStyle: appCss.dmOutfitRegular14.textColor(appColor(context).appTheme.fontColor).letterSpace(0.7),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Insets.i10, vertical: Insets.i8),
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