import 'package:flutter/material.dart';
import 'package:delivery_app/models/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            //image: DecorationImage(
            //image: AssetImage(
            //slideList[index].imageUrl,
            //),
            //fit: BoxFit.cover,
            //),
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 25.0),
        Text(
          slideList[index].title.toUpperCase(),
          style: TextStyle(
            color: Color(0xffEA7E00),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            fontFamily: "roboto",
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.black,
            fontFamily: "roboto",
          ),
        )
      ],
    );
  }
}
