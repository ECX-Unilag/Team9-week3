import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Text(
                "Special orders".toUpperCase(),
                style: TextStyle(
                  color: Color(0xffEA7E00),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 35.0),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffEA7E00))),
              child: Row(
                children: <Widget>[
                  Text(
                    "10 PERSONS",
                    style: TextStyle(
                      color: Color(0xffEA7E00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: SizedBox(width: 0)),
                  Icon(Icons.person_outline,
                      color: Color(0xffEA7E00)),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffEA7E00))),
              child: Row(
                children: <Widget>[
                  Text(
                    "01/09/2020",
                    style: TextStyle(
                      color: Color(0xffEA7E00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: SizedBox(width: 0)),
                  Icon(Icons.content_paste, color: Color(0xffEA7E00)),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffEA7E00))),
              child: Row(
                children: <Widget>[
                  Text(
                    "02 : 00",
                    style: TextStyle(
                      color: Color(0xffEA7E00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: SizedBox(width: 0)),
                  Icon(Icons.timer, color: Color(0xffEA7E00)),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            TextField(
              minLines: 5,
              maxLines: 8,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                hintText: "Tell Us What you want".toUpperCase(),
                hintStyle: TextStyle(color: Color(0xffEA7E00)),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffEA7E00)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffEA7E00)),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffEA7E00)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              onPressed: () {},
              color: Color(0xffEA7E00),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0, horizontal: 15.0),
                child: Text(
                  "ORDER NOW",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
