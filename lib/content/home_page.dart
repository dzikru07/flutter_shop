import 'package:flutter/material.dart';
import 'package:flutter_shop/content/detail_product.dart';
import 'package:flutter_shop/style/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchBar = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchBar.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: _HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  _SearchBar(),
                  SizedBox(
                    height: 15,
                  ),
                  _Banner(),
                  SizedBox(
                    height: 15,
                  ),
                  _MenuCategories(),
                ],
              ),
            ),
            _RowTrendingList(),
            _TrendingList(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Container _TrendingList() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: mainColor),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => DetailPage(
                            name: "T-Shirt Black Women",
                            image: "assets/images/model_3.png"))));
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/model_3.png"))),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              "T-Shirt Black Women",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff474747),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Image.asset(
                                    "assets/images/promo_bg.png",
                                    width: 40,
                                  ),
                                  Text(
                                    "15%",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "IDR 250,000",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff595959),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jakarta utara - SisShop",
                            style: GoogleFonts.poppins(
                                color: Color(0xff595959),
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => DetailPage(
                            name: "T-Shirt Black Men",
                            image: "assets/images/model_1.png"))));
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/model_1.png"))),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              "T-Shirt Black Men",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff474747),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Image.asset(
                                    "assets/images/promo_bg.png",
                                    width: 40,
                                  ),
                                  Text(
                                    "15%",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "IDR 250,000",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff595959),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jakarta utara - SisShop",
                            style: GoogleFonts.poppins(
                                color: Color(0xff595959),
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => DetailPage(
                            name: "T-Shirt White Women",
                            image: "assets/images/model_2.png"))));
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/model_2.png"))),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              "T-Shirt White Women",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff474747),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Image.asset(
                                    "assets/images/promo_bg.png",
                                    width: 40,
                                  ),
                                  Text(
                                    "15%",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "IDR 250,000",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff595959),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jakarta utara - SisShop",
                            style: GoogleFonts.poppins(
                                color: Color(0xff595959),
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _RowTrendingList() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Trending T-shirt",
            style: GoogleFonts.poppins(
                color: Color(0xff0a0a0a),
                fontSize: 11,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "All Product",
            style: GoogleFonts.poppins(
                color: Color(0xffFCB32B),
                fontSize: 11,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  SizedBox _MenuCategories() {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: 20,
        children: [
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffFCB32B),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/logo/shirt_icon.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Fashion",
                style: GoogleFonts.poppins(
                    color: Color(0xff474747),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffFCB32B),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/logo/toy_icon.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kids Toy",
                style: GoogleFonts.poppins(
                    color: Color(0xff474747),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffFCB32B),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/logo/photo_icon.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Photo",
                style: GoogleFonts.poppins(
                    color: Color(0xff474747),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffFCB32B),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/logo/car_icon.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Otomotive",
                style: GoogleFonts.poppins(
                    color: Color(0xff474747),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _Banner() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 199, 199, 199).withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        )
      ]),
      child: Image.asset("assets/logo/banner.png"),
    );
  }

  Stack _SearchBar() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 199, 199, 199).withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]),
          child: SizedBox(
            height: 40,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            controller: searchBar,
            decoration: InputDecoration(
                hintText: "Search Product",
                hintStyle: GoogleFonts.poppins(
                    color: Color(0xffCECECE),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                border: InputBorder.none,
                suffixIcon: Image.asset(
                  "assets/logo/search.png",
                  scale: 2.0,
                )),
          ),
        )
      ],
    );
  }

  AppBar _HomeAppBar() {
    return AppBar(
      leading: Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.fromLTRB(10, 8, 8, 8),
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Image.asset("assets/logo/profile_icon.png"),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome back",
            style: GoogleFonts.poppins(color: Color(0xffCECECE), fontSize: 11),
          ),
          Text(
            "Dzikru Arya",
            style: GoogleFonts.poppins(
                color: Color(0xffCECECE),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      actions: [
        Image.asset("assets/logo/notif_icon.png"),
        Align(
            alignment: Alignment.centerRight,
            child: Image.asset("assets/logo/burger_icon.png")),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
