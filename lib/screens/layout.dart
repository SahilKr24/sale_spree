import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'details_screen.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
                    getPlaceWidget("assets/2.svg","tag1","Service 1").withGridPlacement(
                        rowStart: 0, columnStart: 0, rowSpan: 2),
                    getPlaceWidget("assets/2.svg","tag2","Service 2").withGridPlacement(
                        rowStart: 2, columnStart: 0, rowSpan: 1),
                    getPlaceWidget("assets/2.svg","tag3","Service 3").withGridPlacement(
                        rowStart: 0, columnStart: 1, rowSpan: 1),
                    getPlaceWidget("assets/2.svg","tag4","Service 4").withGridPlacement(
                        rowStart: 1, columnStart: 1, rowSpan: 2),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }

  Widget getPlaceWidget(imagePath,herotag,name) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => DetailScreen(imagePath,herotag,name)
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),),
        child: Stack(
          children: [
            Hero(
              tag: herotag,
              child: ClipRRect(
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Positioned(
              top: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      shadows: <Shadow>[

                      ]
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
