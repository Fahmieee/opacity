import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi! Aku Home Page"),
        backgroundColor: Color(0xff8c062f),
      ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfffe5788),Color(0xfff56d50)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                child: Stack(
                  children: [
                    Opacity(opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/fc/48/32/fc483279dc89161c428eb71c3f203cf9.jpg"), fit: BoxFit.cover)
                      ),
                    ),),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                          image: DecorationImage(image: NetworkImage("https://www.legacy.com/wp-content/uploads/2020/01/Sympathy-flowers-orange-1000-shutterstock_694680475.jpg"), fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20 + MediaQuery.of(context).size.width * 0.35, 20, 20),
                      child: Column(
                        children: [
                          Text(" Beautiful Design Widget ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xfff56d5d), fontSize: 35
                          ),),
                          Container(
                            margin: EdgeInsets.fromLTRB(0,20,0,15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(" Senin ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xfff56d5d), fontSize: 12
                                  ),),
                                Text(" 6 Juni 2021 ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xfff56d5d), fontSize: 12
                                  ),),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Spacer(flex: 10,),
                              Icon(Icons.thumb_up, size: 18, color: Colors.grey,),
                              Spacer(flex: 1,),
                              Text("gg", style: TextStyle(color: Colors.grey),),
                              Spacer(flex: 5,),
                              Icon(Icons.comment, size: 18, color: Colors.grey,),
                              Spacer(flex: 1,),
                              Text("gg", style: TextStyle(color: Colors.grey),),
                              Spacer(flex: 10,)
                            ],
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );

  }
}
