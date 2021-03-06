import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CritaniApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal:24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text("Home Page",style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold)),
                    SizedBox(height: 8,),
                    RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "Choose your story", style: TextStyle(color: Colors.grey)),
                      TextSpan(text: " right away", style: TextStyle(color: Colors.teal, fontSize: 12)),
                      
                    ]
                    ),
                    )
                 
                    ],
                  ),
                  
                Spacer(),
                Badge(
                  child: Icon(Icons.notifications, color: Colors.teal,),
                  showBadge: true,
                  badgeContent: Text(""),
                )
          ],
      ),
      ),

    ),
    SizedBox(height:24,),
    Container(height:48,
    width: MediaQuery.of(context).size.width ,
    margin: EdgeInsets.only(left:24,right:24),
    padding: EdgeInsets.only(left:16,right:16),
    decoration: BoxDecoration(color: Colors.blueGrey[50],
    borderRadius: BorderRadius.circular(16)),
    child: TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.search,size:14,),
        hintText: "Search for your interest..",
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        border: InputBorder.none,
        ),
    ),
    ),
    SizedBox(
      height: 8,
    ),
      GridView.count(
        shrinkWrap: true,
        
        crossAxisCount: 3,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(color: Colors.yellow,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 3,
                    spreadRadius: 4
                  )

                ]
                ),
              ),
              SizedBox(
                height: 8,),
              Text("Kategori")
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(color: Colors.green,
                shape: BoxShape.circle,
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 3,
                    spreadRadius: 4
                  )

                ]
                ),
              ),
              SizedBox(
                height: 8,),
              Text("Cerita")
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(color: Colors.blue,
                shape: BoxShape.circle,
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 3,
                    spreadRadius: 4
                  )

                ]
                ),
              ),
              SizedBox(
                height: 8,),
              Text("Quiz")
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(color: Colors.red,
                shape: BoxShape.circle,
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 3,
                    spreadRadius: 4
                  )

                ]
                ),
              ),
              SizedBox(
                height: 8,),
              Text("Video")
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(color: Colors.purple,
                shape: BoxShape.circle,
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 3,
                    spreadRadius: 4
                  )

                ]
                ),
              ),
              SizedBox(
                height: 8,),
              Text("Tanya Admin")
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(color: Colors.lightGreenAccent,
                shape: BoxShape.circle,
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 3,
                    spreadRadius: 4
                  )

                ]
                ),
              ),
              SizedBox(
                height: 8,),
              Text("Peringkat")
            ]
          )
        )
      ],
      ),
      Container(
        height: 220,
        padding: EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(right: 24),
            child:
            Row(
              children: <Widget>[
                Text("Recommended story"),
                Spacer(),
                Text("More")
              ],
              ),
            ),
              Text("you may also like"),
              SizedBox(height: 16,),
              Container(
                height: 170,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right:16,bottom:8),
                    width: 140,
                    decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 3,
                        spreadRadius: 2
                      )
                    ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(child: Text("gambar",style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(padding:
                            const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Cerita jamet kuproy", style:TextStyle(color: Colors.grey)),
                                Text("8.8",style:TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Row(children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.grey, size: 12,),
                                  Spacer(),
                                  Container(height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      size: 13,
                                      color: Colors.white,
                                    )
                                  )
                                  )
                                ],)
                              ],
                            ),
                          ),),
                      ],)
                    ),
                     Container(
                    margin: EdgeInsets.only(right:16,bottom:8),
                    width: 140,
                    decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 3,
                        spreadRadius: 2
                      )
                    ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(child: Text("gambar",style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(padding:
                            const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Cerita upin ipin", style:TextStyle(color: Colors.grey)),
                                Text("8.8",style:TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Row(children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.grey, size: 12,),
                                  Spacer(),
                                  Container(height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      size: 13,
                                      color: Colors.white,
                                    )
                                  )
                                  )
                                ],)
                              ],
                            ),
                          ),),
                      ],)
                    ),
                     Container(
                    margin: EdgeInsets.only(right:16,bottom:8),
                    width: 140,
                    decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 3,
                        spreadRadius: 2
                      )
                    ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(child: Text("gambar",style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(padding:
                            const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Cerita cinta fitri", style:TextStyle(color: Colors.grey)),
                                Text("8.8",style:TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,

                                ),),
                                Row(children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.yellow, size: 12,),
                                  Icon(Icons.star, color: Colors.grey, size: 12,),
                                  Spacer(),
                                  Container(height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      size: 13,
                                      color: Colors.white,
                                    )
                                  )
                                  )
                                ],)
                              ],
                            ),
                          ),),
                      ],)
                    ),

                  ],
                ),)
          ],
        ),)
    
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.green
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.green
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey
        ),
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.book),title: Text("Story")),
        BottomNavigationBarItem(icon: Icon(Icons.backup),title: Text("Experience")),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("Story")),
      ]),
    );
  }
}