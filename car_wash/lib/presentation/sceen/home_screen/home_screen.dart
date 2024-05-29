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
                height: sizeHeight / 3.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OfferHeadWidgetCommon(
                      label: "#Special Offer for You",
                    ),
                    Container(
                        
                        height: sizeHeight / 4.8,
                        child: CarouselSlider.builder(
                            itemCount: 3,
                            itemBuilder: (context, index, int realIndex) {
                              return Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 1,
                                child: Container(
                                  width: sizeWidth / 1,
                                  child: Image.asset(
                                    'assets/images/Untitled.jpeg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
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
                        count: 3,
                        effect: WormEffect(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeWidth / 1,
                height: sizeHeight / 2.2,
                
                child: Column(
                  children: [
                    OfferHeadWidgetCommon(
                      label: "Services for You",
                    ),
                    Container(
                      width: sizeWidth / 1,
                      height: sizeHeight / 7.5,
                     
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                ),
                                Text("data")
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: sizeWidth / 1,
                      height: sizeHeight / 4,
                      
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              width: sizeWidth / 1.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OfferHeadWidgetCommon extends StatelessWidget {
  final String label;
  const OfferHeadWidgetCommon({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 23),
          child: Text(
            label,
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
    );
  }
}
