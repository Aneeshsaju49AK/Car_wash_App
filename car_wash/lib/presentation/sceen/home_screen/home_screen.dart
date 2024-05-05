import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../export/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();

  late PageController controller;

  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    controller = PageController(initialPage: _currentIndex);
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppbarHomePage(
                sizeWidth: sizeWidth,
                sizeHeight: sizeHeight,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: sizeWidth / 1,
                height: sizeHeight / 3.4,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 23),
                          child: Text(
                            "#Special Offer for You",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("See all"),
                        ),
                      ],
                    ),
                    Container(
                        color: Colors.yellow,
                        height: sizeHeight / 5,
                        child: CarouselSlider.builder(
                            itemCount: 10,
                            itemBuilder: (context, index, int realIndex) {
                              return Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 1,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          // Text(
                                          //   index.toString(),
                                          // ),
                                        ],
                                      )
                                    ],
                                  ));
                            },
                            options: CarouselOptions(
                              height: sizeHeight / 5,
                              autoPlay: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ))),
                    Container(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 10,
                        effect: WormEffect(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth / 1,
                height: sizeHeight / 2,
                color: const Color.fromARGB(255, 65, 243, 33),
              )
            ],
          ),
        ),
      ),
    );
  }
}
