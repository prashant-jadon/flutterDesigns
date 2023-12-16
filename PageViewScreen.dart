import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:be_around/SignUpScreen.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: PageViewScreen(),
    );
  }
}

class PageViewScreenElements extends StatefulWidget {
  const PageViewScreenElements({super.key});

  @override
  State<PageViewScreenElements> createState() => _PageViewScreenElements();
}

class PageViewScreenElements extends State<PageViewScreenElements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 10,
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.black,), onPressed: () {  },),
      ),
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                 // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) )
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Find Your",style: TextStyle(fontSize: 25,color: Colors.black),),
                  SizedBox(height: 5,),
                  Text("INSIPIRATION",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(10))
                    ,child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.black,),
                        hintText: "Search What You Are Looking For",
                        hintStyle: TextStyle(color: Colors.black,fontSize: 15)
                      ),
                    ),
                  ),
                  SizedBox(height: 15,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [Text("Promo Today",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),),
              SizedBox(height: 10,),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      promocard('assetsImages/logomain.png'),
                      promocard('assetsImages/logominimain.jpeg'),
                      promocard('assetsImages/logomain.png'),
                      promocard('assetsImages/logominimain.jpeg'),
                      promocard('assetsImages/logomain.png'),
                      promocard('assetsImages/logominimain.jpeg'),
                      promocard('assetsImages/logomain.png'),
                      promocard('assetsImages/logominimain.jpeg'),
                      promocard('assetsImages/logomain.png'),
                      promocard('assetsImages/logominimain.jpeg'),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assetsImages/logominimain.jpeg')
                      ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20)
                        ,gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: [0.1,0.9],
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0),
                        ]
                    )),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("HOT OF THE DAY"),
                      ),
                    ),
                  ),
                )
              ],
            ),),
          ],
        ) ,
      ),
    );
  }
}

Widget promocard(image){
  return AspectRatio(aspectRatio: 2.6/3,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1,0.9],
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0),
            ]
          )
        ),
      ),
    ),
  );
}
