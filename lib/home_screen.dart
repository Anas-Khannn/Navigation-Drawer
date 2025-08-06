import 'package:flutter/material.dart';
import 'package:learning_journey/screen_two.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Navigation Drawer"),

      ),

       drawer: Drawer(
        //child: Text('Buy From LevSense'),
         child: ListView(
           padding: EdgeInsets.zero,

           children: [

             UserAccountsDrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.blueAccent,

               ),
                 
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'),
                 ),
                 accountName: Text('Anas Khan'),
                 accountEmail: Text('anaskhanislamian728@gmail.com')),
             ListTile(
               leading: Icon(Icons.home),
               title: Text('Home'),
               onTap: (){
                 Navigator.pushNamed(context, ScreenTwo.id);
               },
               
             ),

             ListTile(
               leading: Icon(Icons.dashboard),
               title: Text('Dashboard'),
               onTap: (){
                 Navigator.pushNamed(context, HomeScreen.id);;
               },

             ),
             ListTile(
               leading: Icon(Icons.logout),
               title: Text('Log Out'),
               onTap: (){
                 Navigator.pushNamed(context, HomeScreen.id);;
               },

             ),


             

           ],

         ),
    ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed:(){

              Navigator.pushNamed(context, ScreenTwo.id);

            } ,

            child: Center(child: const Text("Screen - 1")),
          ),
          
        ],
      ),
    );


  }
}


// Source Code for Navigation Pushing
//  Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ScreenTwo()),
//                );
