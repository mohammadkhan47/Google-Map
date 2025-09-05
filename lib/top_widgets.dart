import 'package:flutter/material.dart';
import 'package:googlemaps/lottery.dart';

class TopWidgets extends StatefulWidget {
  const TopWidgets({super.key});

  @override
  State<TopWidgets> createState() => _TopWidgetsState();
}

class _TopWidgetsState extends State<TopWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Widgets'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              // DrawerHeader(child: Text('Mohammad khan')),
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
                  ),
                  accountName: Text('mohammad khan'), 
                  accountEmail: Text('mohamad@gmail.com')),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('page 1'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LotteryApp()));
                },

              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('page 2'),
                onTap: (){},

              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){},
              child: Text('Screen'))

          
          
          
          
          

          // Expanded(child: ListView.builder(
          //     itemCount: 100,
          //     itemBuilder: (context, index){
          //       return ListTile(
          //         title: Text('mohammad khan'),
          //         subtitle: Text('learning flutter'),
          //         trailing: Text('12:44 PM'),
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage('https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg'),
          //         ),
          //       );
          //     }))



          // TextFormField(
          //   enabled: true,
          //   decoration: InputDecoration(
          //     hintText: 'enter email',
          //     labelText: 'Email',
          //     prefixIcon: Icon(Icons.email),
          //     enabledBorder: OutlineInputBorder(
          //       borderSide: BorderSide(color: Colors.red),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     focusedBorder: OutlineInputBorder(
          //       borderSide: BorderSide(color: Colors.green),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     errorBorder: OutlineInputBorder(
          //       borderSide: BorderSide(color: Colors.red)
          //     )
          //   ),
          //
          // )
        ],
      ),
    );
  }
}
