
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(        //appbar
        title: Text('My Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(        //icon Button with icon
              onPressed: (){},
              icon: Icon(Icons.add)
          ),
          IconButton(          //icon button with icon
              onPressed: (){},
              icon: Icon(Icons.settings)
          ),
          IconButton(          //icon button with icon
              onPressed: (){},
              icon: Icon(Icons.call)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  child: Icon(Icons.icecream_outlined,size: 110,),
                ),

                Text('Ice Cream is very delicious right?',    //text
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(height: 20),

                CircleAvatar(         //circular avatar with icon
                  radius: 80,
                  child: Icon(Icons.code,size: 110),
                ),

                Text('Programming is not boring if you love it',     //text
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                CircleAvatar(           //circular avatar with icon
                  radius: 80,
                  child: Icon(Icons.water_drop_outlined,size: 110,),
                ),

                Text('If you submit code directly copy from chatgpt then mark will 0',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
