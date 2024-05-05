import '../../../../export/export.dart';

class AppbarHomePage extends StatelessWidget {
  const AppbarHomePage({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth / 1,
      height: sizeHeight / 4,
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadiusDirectional.vertical(
          bottom: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LocationWidget(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
          SearchWidgetInAppbar(sizeWidth: sizeWidth, sizeHeight: sizeHeight)
        ],
      ),
    );
  }
}
