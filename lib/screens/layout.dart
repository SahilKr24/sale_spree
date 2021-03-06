import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sale_spree/components/item.dart';
import 'details_screen.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: LayoutGrid(
                columnGap: 12,
                rowGap: 12,
                templateColumnSizes: [
                  FlexibleTrackSize(1),
                  FlexibleTrackSize(1),
                ],
                templateRowSizes: [
                  FlexibleTrackSize(1),
                  FlexibleTrackSize(0.6),
                  FlexibleTrackSize(1),
                ],
                children: [
                  getPlaceWidget("tag1", item: items[0]).withGridPlacement(
                      rowStart: 0, columnStart: 0, rowSpan: 2),
                  getPlaceWidget("tag2", item: items[1]).withGridPlacement(
                      rowStart: 2, columnStart: 0, rowSpan: 1),
                  getPlaceWidget("tag3", item: items[2]).withGridPlacement(
                      rowStart: 0, columnStart: 1, rowSpan: 1),
                  getPlaceWidget("tag4", item: items[3]).withGridPlacement(
                      rowStart: 1, columnStart: 1, rowSpan: 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getPlaceWidget(herotag, {Item item}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(herotag, item: item)));
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Hero(
                tag: herotag,
                child: ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(item.imageUrl),
                            fit: BoxFit.fitHeight)),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.item,
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(1.5, 1.5),
                                blurRadius: 4.0,
                                color: Colors.black)
                          ]),
                    ),
                    Text(
                      "₹ ${item.price}",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(1.5, 1.5),
                                blurRadius: 4.0,
                                color: Colors.black)
                          ]),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
