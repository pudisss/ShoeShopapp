import "package:flutter/material.dart";
import "package:animations/animations.dart";


class Product extends StatefulWidget {
  final filepath;
  final title;
  final price;

  Product(this.filepath, this.title, this.price);

  @override
  State<Product> createState() => _ProductState(this.filepath, this.title, this.price);
}

class _ProductState extends State<Product> {

  final filepath;
  final title;
  final price;


  final List<Color> listcolor = [
    Color.fromRGBO(135, 115, 176, 1),
    Color.fromRGBO(140, 140, 141, 1),
    Color.fromRGBO(232, 255, 193, 1),
    Color.fromRGBO(2, 120, 174, 1),
  ];
  final List<String> size = [
    "40",
    "41",
    "42",
    "43",
    "44",
  ];

  _ProductState(this.filepath, this.title, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Image.asset("assets/images/more.png")
            ),
          )
        ],
      ),
      body: SingleChildScrollView(child:  Container(
        
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Image.asset(filepath),
            ),
            Container(
              width: 364,
              height: 350.31,
              margin: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(20, 20)
                  )
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/images/nikelogo.png")
                  ),
                  Container(
                    child: Text(title, style: TextStyle(fontFamily: "roboto", fontSize: 40, color: Colors.black, fontWeight: FontWeight.w700))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(price, style: TextStyle(fontFamily: "roboto", fontSize: 30, color: Color.fromRGBO(252, 166, 82, 1), fontWeight: FontWeight.w700))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 25),
                    alignment: Alignment.centerLeft,
                    child: Text("Colors", style: TextStyle(fontFamily: "Colors", fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    
                    height: 42.18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(listcolor.length, (index) {
                        return Container(
                          width: 42.18,
                          height: 42.18,
                          child: Center(
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: listcolor[index],
                              )

                            )
                          )
                        );
                      })
                    )),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text("Size", style: TextStyle(fontFamily: "roboto", fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 42.18,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(5, (index) {
                          return Container(
                            width:42.18,
                            height: 42.18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(244, 244, 244, 1),
                            ),
                            child: Center(child: Text(size[index], style: TextStyle(fontFamily: "roboto", fontSize: 18, fontWeight: FontWeight.w400)))
                          );
                        })
                      )
                    ),
                    ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(49, 43, 38, 1),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text("ADD TO CART", style: TextStyle(fontFamily: "roboto", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500))
                      )
                    )


          ]
        )

      )
    ));
  }
}