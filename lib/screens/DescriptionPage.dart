import 'package:flutter/material.dart';
import 'package:second_project/screens/LandingScreen.dart';
import 'package:second_project/utils/Widget_Function.dart';
import 'package:second_project/utils/constrain.dart';
import 'package:slide_to_act/slide_to_act.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key, required this.productData})
      : super(key: key);

  final Map<String, dynamic> productData;

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  _DescriptionPageState();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          child: Stack(
            children: [
              SingleChildScrollView(
                // physics: BouncingScrollPhysics(),
                child: Container(
                  height: constraints.maxHeight,
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: constraints.maxHeight * 0.40,
                            color: Color(0xffE2F3D4),
                            child: Center(
                              child: Image.asset(
                                "assets/images/${widget.productData['image']}",
                                width: constraints.maxWidth * 0.50,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.orange,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange.shade100,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: -25,
                              right: 10,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                      addVerticalSpace(30),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          color: Colors.grey.shade50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${widget.productData['name']}",
                                        style: textTheme.headline5,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(
                                          Icons.location_on,
                                          color: Colors.red,
                                          size: 15,
                                        )),
                                        TextSpan(
                                            text:
                                                "${widget.productData['rest']}",
                                            style: textTheme.caption),
                                      ])),
                                    ],
                                  ),
                                  RichText(
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "\$",
                                          style: textTheme.subtitle2!
                                              .apply(fontWeightDelta: 4)),
                                      TextSpan(
                                        text: "${widget.productData['price']}",
                                        style: textTheme.headline5!
                                            .apply(color: COLOR_ORANGE),
                                      )
                                    ]),
                                  )
                                ],
                              ),
                              addVerticalSpace(10),
                              Divider(),
                              addVerticalSpace(10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(children: [
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.star,
                                        color: COLOR_ORANGE,
                                        size: 15,
                                      )),
                                      TextSpan(
                                          text:
                                              "${widget.productData['rating']}",
                                          style: textTheme.subtitle2!
                                              .apply(fontWeightDelta: 4)),
                                    ]),
                                  ),
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(children: [
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.timer,
                                        color: COLOR_ORANGE,
                                        size: 15,
                                      )),
                                      TextSpan(
                                          text: "18 Mins",
                                          style: textTheme.subtitle2!
                                              .apply(fontWeightDelta: 4)),
                                    ]),
                                  ),
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(children: [
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.location_on,
                                        color: COLOR_GREEN,
                                        size: 15,
                                      )),
                                      TextSpan(
                                          text: "2.3 KM",
                                          style: textTheme.subtitle2!
                                              .apply(fontWeightDelta: 4)),
                                    ]),
                                  ),
                                ],
                              ),
                              addVerticalSpace(10),
                              Divider(),
                              addVerticalSpace(5),
                              Text(
                                "Overview",
                                style: textTheme.headline5,
                              ),
                              addVerticalSpace(2),
                              Text(
                                "This is dummy text. This is dummy text. This is dummy text. This is dummy text.This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. This is dummy text. ",
                                style: textTheme.subtitle2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.12,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)), color: Colors.white),
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SlideAction(
            text: "Add to Cart",
            sliderButtonIcon: Icon(
            Icons.shopping_bag,
            color: Colors.white,
            ),
              sliderRotate: false,
              borderRadius: 10.0,
              elevation: 0,
              innerColor: COLOR_GREEN,
              outerColor: Colors.grey.shade100,
            ))))
            ],
          ),
        );
      })),
    );
  }
}
