import 'package:flutter/material.dart';
import 'package:googlemaps/sign%20in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              Icon(Icons.map, color: Colors.orange, size: 40),
              SizedBox(width: 8), // spacing
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Maintenance',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Box',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),


          Center(
            child: Text('Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40),
          Text('Lorem ipsum dolor sit amet\nconsectetur adipiscing elit',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 30),
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
          SizedBox(height: 40),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
            },
            child: Container(
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
          )
        ],
      ),
    );
  }
}
