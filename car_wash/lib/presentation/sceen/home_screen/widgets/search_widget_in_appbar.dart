import '../../../../export/export.dart';

class SearchWidgetInAppbar extends StatelessWidget {
  const SearchWidgetInAppbar({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidth / 1.2,
      height: sizeHeight / 17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: sizeWidth / 1.5,
            child: TextFormField(
              textAlign: TextAlign.start,
              cursorWidth: BorderSide.strokeAlignOutside,
              decoration: InputDecoration(
                label: const Text("Search"),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
          Container(
            width: sizeWidth / 7.5,
            height: sizeHeight / 13,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.manage_search_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
