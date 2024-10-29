import 'package:flutter/material.dart';

class ScreenshotCarousel extends StatefulWidget {
  const ScreenshotCarousel({this.items = const [], super.key});

  final List items;

  @override
  _ScreenshotCarouselState createState() => _ScreenshotCarouselState();
}

class _ScreenshotCarouselState extends State<ScreenshotCarousel> {
  // Replace these image paths with the paths or URLs of your mobile screenshots

  int currentIndex = 0;
  PageController _pageController = PageController();

  onNext(int index) {
    if (_pageController.hasClients) {
      _pageController.animateToPage(
          index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 0.5,
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.items.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(16),
                  //   child: Image.asset(
                  //     widget.items[index],
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  child: Container(
                    color: Colors.black87,
                    child: Image.asset(
                      widget.items[index],
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.items.length, (index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  currentIndex = index;
                });
                onNext(index);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                width: currentIndex == index ? 12.0 : 8.0,
                height: currentIndex == index ? 12.0 : 8.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index ? Colors.blue : Colors.grey,
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
