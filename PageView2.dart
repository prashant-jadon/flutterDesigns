import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';


class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});


  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> with SingleTickerProviderStateMixin{
  late PageController _pageController ;
  int totalPage = 4;
  void _onScroll(){
  }
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          viewPage(page:1,image: 'assetsImages/one.jpeg',title: "INDIA",description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."),
          viewPage(page:2,image: 'assetsImages/two.jpg',title: "USA",description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."),
          viewPage(page:3,image: 'assetsImages/logomain.png',title: "AGRA",description: "I LOVE AGRA"),
          viewPage(page:4,image: 'assetsImages/logomain.png',title: "LONDON",description: "I LOVE LONDON"),
          viewPage(page:5,image: 'assetsImages/logomain.png',title: "CHINA",description: "I LOVE CHINA"),
          viewPage(page:6,image: 'assetsImages/three.jpg',title: "AMERICA",description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."),
          viewPage(page:7,image: 'assetsImages/four.jpg',title: "BANGKOK", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."),
        ],
      ),
    );
  }
}

Widget viewPage({image,title,description,page}){
  return Container(
    decoration: BoxDecoration(
      image:DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [0.3,0.9],
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.2)
          ]
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child:
        SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(page.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                Text("/7",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontSize: 50, height: 1.2, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.star,color: Colors.yellow,size: 15,),),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.star,color: Colors.yellow,size: 15,),),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.star,color: Colors.yellow,size: 15,),),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.star,color: Colors.yellow,size: 15,),),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.star,color: Colors.grey,size: 15,),),
                    Text('4.0',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text('(2700)',style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(padding: EdgeInsets.only(right: 50),
                child:
                Text(description,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.7),height: 1),),),
              ],
            ),)],
          ),
        ),
      ),
    ),
  );
}


