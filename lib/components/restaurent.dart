import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:my_panda_app/constant/color.dart';
import 'package:my_panda_app/constant/constant.dart';

class RestaurrentScreen extends StatefulWidget {
  final String name,
      image,
      remainingTime,
      subTitle,
      rating,
      deliveryTime,
      totalRating,
      deliveryPrice;
  const RestaurrentScreen(
      {Key? key,
      required this.name,
      required this.image,
      required this.remainingTime,
      required this.rating,
      required this.deliveryTime,
      required this.totalRating,
      required this.subTitle,
      required this.deliveryPrice})
      : super(key: key);

  @override
  State<RestaurrentScreen> createState() => _RestaurrentScreenState();
}

class _RestaurrentScreenState extends State<RestaurrentScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: height * .3,
        width: width * .6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    height: height * .2,
                    width: 300.0,
                    fit: BoxFit.cover,
                    image: AssetImage(widget.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 7, left: 5, right: 10, bottom: 7),
                      child: Text(
                        'Flach 20% 0ff',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfffffcff),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(widget.remainingTime,
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      color: Color(0xff323232),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 1,
                      itemSize: 18,
                    ),
                    Text(
                      " " + widget.rating,
                      style: TextStyle(
                        color: Color(0xff323232),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "  (" + widget.totalRating + ")",
                      style: TextStyle(
                          color: Color(0xffa9a9a9),
                          fontSize: 12,
                          fontFamily: Light),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6,),
            Text(r"$ ."+widget.subTitle,style: TextStyle(color: Color(0xff707070), fontSize: 12, fontFamily: Regular),),
          ],
        ),
      ),
    );
  }
}
