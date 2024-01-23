import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0.0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF21262E), width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF21262E),
                    Color(0xFF21262E).withOpacity(0.0),
                  ],
                ),
              ),
              child: Center(
                // child: Image.asset(
                //   'assets/images/element-3.png',
                //   width: 12.0,
                //   height: 12.0,
                //   fit: BoxFit.contain,
                // ),
                child: Icon(
                  Icons.grid_view_rounded,
                  size: 16.0,
                  color: Colors.white.withOpacity(0.18),
                ),
              ),
            ),
            Text(
              'Cart',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/profile.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  // margin: EdgeInsets.fromLTRB(10, 0, 10, 16),
                  padding: EdgeInsets.fromLTRB(12, 9, 16.56, 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff262b33),
                        Color(0x00262b33).withOpacity(0.0),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 61.44, 10),
                        width: double.infinity,
                        height: 100.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 22, 0),
                              width: 100.0,
                              height: 100.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'assets/images/cup1.png',
                                  width: 100.0,
                                  height: 100.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 4),
                              width: 118.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 3),
                                          child: Text(
                                            'Cappuccino',
                                            style: GoogleFonts.poppins(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'With Steamed Milk',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffaeaeae),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xff141921),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Medium Roasted',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffaeaeae),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 0, 0, 8),
                        height: 35.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                              width: 72.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff0c0f14),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'S',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 19, 1),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffd17842),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 4.20',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.56),
                              width: 28.44,
                              height: 28.44,
                              child: Image.asset(
                                'assets/images/minus.png',
                                width: 28.44,
                                height: 28.44,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16.56, 3, 0, 2),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                                    width: 50.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffd17842)),
                                      color: Color(0xff0c0f14),
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1.56),
                                    width: 28.44,
                                    height: 28.44,
                                    child: Image.asset(
                                      'assets/images/plus.png',
                                      width: 28.44,
                                      height: 28.44,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 8),
                        height: 35.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                              width: 72.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff0c0f14),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'M',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 19, 1),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffd17842),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 4.20',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.56),
                              width: 28.44,
                              height: 28.44,
                              child: Image.asset(
                                'assets/images/minus.png',
                                width: 28.44,
                                height: 28.44,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16.56, 3, 0, 2),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                                    width: 50.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffd17842)),
                                      color: Color(0xff0c0f14),
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1.56),
                                    width: 28.44,
                                    height: 28.44,
                                    child: Image.asset(
                                      'assets/images/plus.png',
                                      width: 28.44,
                                      height: 28.44,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 8),
                        height: 35.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                              width: 72.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff0c0f14),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'L',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 19, 1),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffd17842),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 4.20',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.56),
                              width: 28.44,
                              height: 28.44,
                              child: Image.asset(
                                'assets/images/minus.png',
                                width: 28.44,
                                height: 28.44,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(16.56, 3, 0, 2),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                                    width: 50.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffd17842)),
                                      color: Color(0xff0c0f14),
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1.56),
                                    width: 28.44,
                                    height: 28.44,
                                    child: Image.asset(
                                      'assets/images/plus.png',
                                      width: 28.44,
                                      height: 28.44,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ///////////////////////////////////////////////////
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF262B33),
                        Color(0xFF262B33).withOpacity(0.0),
                      ],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/cup2.png',
                          width: 126.0,
                          height: 126.0,
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cappuccino',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'With Steamed Milk',
                              style: GoogleFonts.poppins(
                                color: Color(0xFFAEAEAE),
                                fontSize: 9.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Container(
                                  width: 72.0,
                                  height: 35.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0C0F14),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    'M',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$',
                                          style: GoogleFonts.poppins(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFD17842),
                                          ),
                                        ),
                                        SizedBox(width: 4.0),
                                        Text(
                                          '6.20',
                                          style: GoogleFonts.poppins(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
