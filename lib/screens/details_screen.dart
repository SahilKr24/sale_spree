import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sale_spree/components/item.dart';

class DetailScreen extends StatefulWidget {
  final imagePath;
  final herotag;
  final name;
  Item item;

  DetailScreen(this.imagePath, this.herotag, this.name, {this.item});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Icon like;
  bool liked;

  void swapIcon() {
    like = liked
        ? Icon(
            Icons.favorite,
            color: Colors.red,
          )
        : Icon(
            Icons.favorite_border,
            size: 30,
          );
  }

  @override
  void initState() {
    liked = false;
    like = Icon(
      Icons.favorite_border,
      size: 30,
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.5 + 16,
                          bottom: 20,
                          right: 32,
                          left: 32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.item,
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.message,
                                      size: 22,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      widget.item.desc,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Hero(
                        tag: widget.herotag,
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: ClipRRect(
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(widget.item.imageUrl),
                                      fit: BoxFit.cover)),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Positioned(
                      child: RawMaterialButton(
                        fillColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        elevation: 1,
                        highlightElevation: 1,
                        constraints: BoxConstraints.tightFor(
                          width: 60.0,
                          height: 60.0,
                        ),
                        onPressed: () {
                          setState(() {
                            liked = !liked;
                            swapIcon();
                          });
                        },
                        padding: const EdgeInsets.all(16),
                        child: AnimatedContainer(
                            curve: Curves.bounceInOut,
                            duration: Duration(seconds: 5),
                            child: like),
                      ),
                      right: 34,
                      bottom: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Prices across sites",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      priceElement(context,
                          assetName: "assets/amazon.svg",
                          price: widget.item.price),
                      priceElement(context,
                          assetName: "assets/flipkart.svg",
                          price: widget.item.flipkart),
                      priceElement(context,
                          assetName: "assets/snapdeal.svg",
                          price: widget.item.snapdeal)
                    ],
                  )),
              Spacer(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    color: Colors.white),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Like it?",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: 40.0,
                          width:  MediaQuery.of(context).size.width * 0.84 ,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text('BUY NOW',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat')),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row priceElement(BuildContext context, {String assetName, double price}) {
    return Row(
      children: [
        Container(
            child: SvgPicture.asset(
          assetName,
          width: 65,
        )),
        SizedBox(
          width: 20,
        ),
        Center(
            child: Text(
          "₹" + price.toString(),
          textScaleFactor: 1.5,
          textAlign: TextAlign.right,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
        ))
      ],
    );
  }
}
