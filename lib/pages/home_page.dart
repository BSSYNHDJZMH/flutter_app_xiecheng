import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  List _imageUrls = [
    'https://pages.c-ctrip.com/commerce/promote/car/app/201908/pc/images/image1.png',
    'https://pages.c-ctrip.com/hotel/201908/fengyeji/fengyejiPC.jpg',
    'https://dimg04.c-ctrip.com/images/3009180000013phufC273.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 160,
              child: Swiper(
                itemCount: _imageUrls.length,
                autoplay: true,
                itemBuilder: (BuildContext context,int index){
                  return Image.network(
                    _imageUrls[index],
                    fit:BoxFit.fill,
                  );
                },
                pagination: SwiperPagination(),
              ),
            )
          ],
        ),
      ),
    );
  }
}