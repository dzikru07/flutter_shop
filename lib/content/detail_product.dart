import 'package:flutter/material.dart';
import 'package:flutter_shop/style/color.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  DetailPage({required this.name, required this.image, super.key});

  String name, image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 1.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill)),
                ),
                Positioned(
                    top: 30,
                    left: 30,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        color: Color(0xff0a0a0a),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        "IDR 250,000",
                        style: GoogleFonts.poppins(
                            color: Color(0xff595959),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
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
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.poppins(
                        color: Color(0xff0a0a0a),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "barang yang di foto Di jamin100% mirip aslinya baru.GARANSI jika barang Tidak Sesuai bila barang reject akan kami retur dengan barang yang baru belum terpakai 👍👍👍☝Barang yg kami kirim selalu melalui proses checking agar tidak terjadi kekeliruan baik motif maupun sizenya. Stok kosong langsung kami konfirmasi, TIDAK ASAL KIRIM. 100% GARANSI jika produk tidak Terima Kasih Sudah Berkunjung di Toko Kami.Happy Shopping!! ",
                    style: GoogleFonts.poppins(
                        color: Color(0xff0a0a0a),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width / 2.5,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: mainColor, width: 2)),
                        child: Center(
                          child: Text(
                            "Add To Cart",
                            style: GoogleFonts.poppins(
                                color: Color(0xff131313),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 2.3,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: mainColor),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
