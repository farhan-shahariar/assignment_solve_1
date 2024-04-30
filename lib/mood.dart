import 'package:flutter/material.dart';

class Mood extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mood', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        ),
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white,)),
        ],
      ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,

        ),
        children: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 390,
                height: 325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('image/Mood 1.jpg'),
                    fit: BoxFit.cover,
                  )
                ),

              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(20),
                child:Text('Mood With Nature', style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,

                ),),
              ),

              Padding(padding: EdgeInsets.all(20),
                child:Text('Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                  style: TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,

                  ),),
              ),

              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: 387,
                    height: 51,
                    alignment: Alignment.center,
                    child: Text('See More', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),),
                    decoration: BoxDecoration(
                      color: Colors.green,
                        borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(20),
                child:Text('Suggestions', style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color: Colors.green,

                ),),
              ),
            ],
          ),
          Row(

            children: [
              Padding( padding: EdgeInsets.all(8),
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
              Padding( padding: EdgeInsets.all(8),
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
            ],
          )



        ],
      ),
    );
  }

}