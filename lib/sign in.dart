import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.add_a_photo),
              SizedBox(width: 10),
              Text('Maintenance',style: TextStyle(
                fontSize: 20,
              ),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Box',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('Sign Up',style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(height: 20,),
          Text('Lorem ipsum dolor amit\nconsfadf sdfsfsj dfd',style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: ' enter Name',
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: ' enter contact',
                  labelText: 'contact',
                  prefixIcon: Icon(Icons.call),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: ' enter email',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: ' enter password',
                  labelText: 'password',
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text('LOG IN',style: TextStyle(
                  color: Colors.white
              ),),
            ),

          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
            child: Text('Already have an account?',
            style: TextStyle(
              fontSize: 20
            )
              ),
          ),
          Center(
            child: Text('Log In',
                style: TextStyle(
                    fontSize: 20,
                  color: Colors.deepOrange
                )
            ),
          ),
              ])
        ],
      ),
    );
  }
}
