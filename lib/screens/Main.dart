import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "product.dart";



class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  final List<String> listviewicon = [
    "assets/images/mask.png",
    "assets/images/shoe.png",
    "assets/images/tshirt.png",
    "assets/images/cap.png",
    "assets/images/camera.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(49, 43, 38, 1),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home.png", color: Colors.black),
            label: ""

          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/shop.png", color: Colors.black),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/search.png", color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/person.png", color: Colors.black),
            label: ""
          ),

        ],
        

      ),
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("assets/images/menu.png")
        ),
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/profile.png")
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(child:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 40),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, i) {
                  return  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(left: 20),
                    
                    
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(201, 201, 201, 0.21),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(listviewicon[i], color: Colors.black)
                    )
                  );
                }
              )
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text("Recently Popular", style: TextStyle(fontFamily: "roboto", fontSize: 18, fontWeight: FontWeight.w400))
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text("Top Shoes", style: TextStyle(fontFamily: "roboto", fontSize: 40, fontWeight: FontWeight.w900))
            ),
            Container(
              height: 430.83,
              margin: EdgeInsets.only(top: 30),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemCount: 1,
                itemBuilder: (context, i) {
                  return OpenContainer(
                    openBuilder: (context, action) => Product("assets/images/nike.png", "Nike Air Max", r"$499.99"),
                    transitionDuration: Duration(milliseconds: 600),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) => Container(
                    width: 364,
                    height: 430.83,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(20, 20)
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          
                          child: Image.asset("assets/images/nike.png")
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Nike Air Max", style: TextStyle(fontFamily: "roboto", fontSize: 30, fontWeight: FontWeight.w900))
                              ),
                              Container(
                                width: 204.15,
                                height: 47.43,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(right: 150, top: 5),

                                child: Text("NEW ARRIVAL SPECIAL COLLECTION", style: TextStyle(fontFamily: "roboto", fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500))
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 5),
                                child: Text(r"$4.99", style: TextStyle(fontFamily: "roboto", fontSize: 20, fontWeight: FontWeight.w900, color: Color.fromRGBO(252, 166, 82, 1)))
                              )
                              
                            ]
                          )
                        )
                      ]
                    )

                  ));
                }
              )
            )
          ]
        )
      )
    ));
  }
}