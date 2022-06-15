
import 'package:flutter/material.dart';
class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Colors.teal,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/imgg.jpg',
                  height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  )),
              const Text('Gaurav kumar',style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 15,),
              const Text('Flutter Developer',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              const Divider(
                color: Colors.white,
                thickness: 3,
                endIndent: 30,indent: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 450,
                width: 300,
                child:  ListView(
                   children: <Widget>[
                     _buildCardViewWidget(icon: Icons.vpn_lock_sharp,title: 'Website'),
                     const SizedBox(
                       height: 10,
                     ),
                     _buildCardViewWidget(icon: Icons.phone,title: 'Phone number'),
                     const SizedBox(
                       height: 10,
                     ),
                     _buildCardViewWidget(icon: Icons.email,title: 'Email ID'),
                     const SizedBox(
                       height: 10,
                     ),
                     _buildCardViewWidget(icon: Icons.facebook,title: 'Facebook'),
                     const SizedBox(
                       height: 10,
                     ),
                     _buildCardViewWidget(icon: Icons.device_hub,title: 'GitHub'),
                     const SizedBox(
                       height: 10,
                     ),
                     _buildCardViewWidget(icon: Icons.telegram,title: 'Telegram'),
                     const SizedBox(
                       height: 10,
                     ),
                  ],
                 ),
                ),
            ],
          ),
          ),
      ),


          // bottomNavigationBar: InkWell(
          //   onTap: () {},
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.tealAccent,
          //     ),
          //     child: TextButton(
          //       onPressed: () {
          //         // Navigator.push(
          //         //     context, MaterialPageRoute(builder: (context) => Fifthpage()));
          //       },
          //       child: Expanded(
          //         child: Text('Designed and Developed by Gaurav kumar weant to contact?',
          //           textAlign: TextAlign.center,
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 15,
          //           fontWeight: FontWeight.w700,
          //         ),
          //          ),
          //       ),
          //     ),
          //   ),
          // ),
      ),
    );
  }
  _buildCardViewWidget({required icon,required String title}){
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(icon),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: title,
        hintStyle: const TextStyle(
        color: Colors.teal,
      ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
