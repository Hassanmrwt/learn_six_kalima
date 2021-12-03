import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';
import 'dart:io';

class Arabic extends StatefulWidget {
  const Arabic({Key? key}) : super(key: key);

  @override
  _ArabicState createState() => _ArabicState();
}

var pixelRatio = window.devicePixelRatio;

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

//Padding in physical pixels
var padding = window.padding;

//Safe area paddings in logical pixels
var paddingLeft = window.padding.left / window.devicePixelRatio;
var paddingRight = window.padding.right / window.devicePixelRatio;
var paddingTop = window.padding.top / window.devicePixelRatio;
var paddingBottom = window.padding.bottom / window.devicePixelRatio;

//Safe area in logical pixels
var safeWidth = logicalWidth - paddingLeft - paddingRight;
var safeHeight = logicalHeight - paddingTop - paddingBottom;

class _ArabicState extends State<Arabic> {
  final imageList = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    //borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(imageList[0]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  constraints: BoxConstraints.expand(),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(imageList[1]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  constraints: BoxConstraints.expand(),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                      image: AssetImage(imageList[2]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  constraints: BoxConstraints.expand(),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                      image: AssetImage(imageList[3]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  constraints: BoxConstraints.expand(),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                      image: AssetImage(imageList[4]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //6th Image of Slider
                Container(
                  constraints: BoxConstraints.expand(),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                      image: AssetImage(imageList[5]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: safeHeight,
                //height: (MediaQuery.of(context).size.height),
                enlargeCenterPage: true,
                autoPlay: false,
                //aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
