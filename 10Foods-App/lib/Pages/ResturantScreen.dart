import 'package:flutter/material.dart';

class Resturant extends StatefulWidget {
  @override
  _ResturantState createState() => _ResturantState();
}

class _ResturantState extends State<Resturant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, bottom: 5.0),
                child: Text(
                  "Next Month".toUpperCase(),
                  style: TextStyle(
                    color: Color(0xffEA7E00),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image(
                      fit: BoxFit.cover,
                      height: 170.0,
                      image: AssetImage("images/flag.jpg"),
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "This Month".toUpperCase(),
              style: TextStyle(
                color: Color(0xffEA7E00),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width *
                                1.0,
                            height: 150.0,
                            image: AssetImage("images/meat.jpg"),
                          ),
                          Text(
                            "Sweet and golden chicken nuggets",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "roboto",
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "£ 00.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffEA7E00),
                              fontWeight: FontWeight.bold,
                              fontFamily: "roboto",
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xffEA7E00),
                                  child: Text(
                                    "Order Now".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox(width: 0.0)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width *
                                1.0,
                            height: 150.0,
                            image: AssetImage("images/spag.jpg"),
                          ),
                          Text(
                            "Spaghetti and Meatballs with springonions",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "roboto",
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "£ 00.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffEA7E00),
                              fontFamily: "roboto",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xffEA7E00),
                                  child: Text(
                                    "Order Now".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width *
                                1.0,
                            height: 150.0,
                            image: AssetImage("images/plantain.jpg"),
                          ),
                          Text(
                            "Cauliflower Jollof rice with Turkey and Plantain",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "roboto",
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "£ 00.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffEA7E00),
                              fontWeight: FontWeight.bold,
                              fontFamily: "roboto",
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xffEA7E00),
                                  child: Text(
                                    "Order Now".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox(width: 0.0)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width *
                                1.0,
                            height: 150.0,
                            image: AssetImage("images/rice.jpg"),
                          ),
                          Text(
                            "Grilled Fish with Chicken Veg.Sauce and White Rice",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "roboto",
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            "£ 00.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffEA7E00),
                              fontFamily: "roboto",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xffEA7E00),
                                  child: Text(
                                    "Order Now".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
