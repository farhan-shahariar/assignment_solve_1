import 'package:flutter/material.dart';
import 'package:assignment_solve_1/mood.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Decoration',
      home: Gallery(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.green,
          toolbarHeight: 98,

        )
      ),
    );
  }
}

class Gallery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Gallery', style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.white,

        ),),
        leading: IconButton(onPressed: () {Navigator.pop(context);},
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white,))
        ],
      ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

        ),
        children: [
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Mood', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Mood 1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Asthetic', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Asthetic1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Animals', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Animal 1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('City', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/City1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Travel', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Travel 1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Sky', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Sky 1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Road', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Road 1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mood()));},
            child: Padding( padding: EdgeInsets.all(10),
              child:
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(20) ,
                child: Text('Flowers', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('image/Flower 1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),),
          ),

        ],
      ),
    );
  }

}