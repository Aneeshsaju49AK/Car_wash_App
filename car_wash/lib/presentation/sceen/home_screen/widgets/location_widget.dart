import '../../../../export/export.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
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
      height: sizeHeight / 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Location"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add_location_alt_outlined, size: sizeHeight / 45),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("thalakode"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.file_download_outlined),
                ],
              )
            ],
          ),
          Container(
            width: sizeWidth / 8,
            height: sizeHeight / 13,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.notification_add),
          ),
        ],
      ),
    );
  }
}
