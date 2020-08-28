import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartCart(),
    );
  }
}

class StartCart extends StatefulWidget {
  @override
  _StartCartState createState() => _StartCartState();
}

class _StartCartState extends State<StartCart> {
  String radioItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(2.0),
                width: MediaQuery.of(context).size.width * 1.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width *
                              0.45,
                          child: Image(
                            fit: BoxFit.cover,
                            height: 180.0,
                            image: AssetImage("images/meat.jpg"),
                          ),
                        ),
                        Expanded(child: SizedBox(width: 0.0)),
                        Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width *
                                0.46,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Sweet and Golden chicken Nuggets",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  "£ 00.00",
                                  style: TextStyle(
                                      color: Color(0xffEA7E00),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(color: Color(0xffEA7E00)),
                    ),
                    SizedBox(height: 3.0),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        bottom: 5.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "TOTAL :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox(height: 0.0)),
                          Text(
                            "£ 00.00",
                            style: TextStyle(
                                color: Color(0xffEA7E00),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("ADDRESS DETAILS"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "",
                      style: TextStyle(
                        color: Color(0xffEA7E00),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "21, Imoudu stret, Otubu Estate, Satellite town, Lagos",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("CHOOSE A DELIVERY METHOD"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RadioListTile(
                      activeColor: Color(0xffEA7E00),
                      value: 'Home Delivery',
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "DOOR DELIVERY",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "Items will be delivered between 1 or 2 hours or lesser depending on your location",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Color(0xffEA7E00),
                      value: 'PickUp',
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "PICK UP",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "Item(s) will be ready for pick up in the resturant in 1hour(s) time.",
                            style: TextStyle(
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "delivery fee :".toUpperCase(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text("£ 1000")
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Text(
                          "Sum total :".toUpperCase(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text("£ 1000")
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                              onPressed: () {},
                              color: Color(0xffEA7E00),
                              child: Text(
                                " ORDER NOW!",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
