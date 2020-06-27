import 'package:flutter/material.dart';

import 'package:sale_spree/components/item.dart';

class OnWatch extends StatefulWidget {
  @override
  _OnWatchState createState() => _OnWatchState();
}

class _OnWatchState extends State<OnWatch> {
  List<Item> _cart = cart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 80.0, 0.0, 0.0),
                  child: Text(
                    'On Watch Stuff',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25.0, 155.0, 0.0, 0.0),
                    child: Icon(Icons.shopping_cart, size: 35),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  itemCount: _cart.length,
                  itemBuilder: (context, index) {
                    var item = _cart[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 0.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: Card(
                          elevation: 4.0,
                          child: ListTile(
                            leading: ClipRRect(
                              child: Container(
                                width: MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(item.imageUrl),
                                        fit: BoxFit.cover)),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            title: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    item.item,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "₹ ${item.price}",
                                        style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        ", ₹ ${item.amazon}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            trailing: GestureDetector(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Icon(
                                      Icons.remove_shopping_cart,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    _cart.remove(item);
                                  });
                                }),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
