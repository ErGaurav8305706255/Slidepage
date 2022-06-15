import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:slidepage/schoolpage.dart';
import 'package:slidepage/validate.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController textMobileController = TextEditingController();

  final List items = [
    'assets/images.jpg',
    'assets/img.jpg',
    'assets/imgg.jpg',
    'assets/imge.jpg',
    'assets/image1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 400,
          width: 200,
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: 380.0,
                    autoPlay: true,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true),
                items: items.map((items) {
                  return Builder(builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(items, fit: BoxFit.cover)),
                        // color: items,
                      ),
                    );
                  });
                }).toList(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: (context) => Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.cyan[100],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            'If you want to visit our institute portal.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Login With Mobile Number'),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                            decoration: const InputDecoration(
                                prefixIcon:
                                    Icon(Icons.phone, color: Colors.green),
                                filled: true,
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                hintText: 'Enter your mobile number'),
                            controller: textMobileController,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                child: const Text('Submit'),
                                onPressed: () {
                                  if (textMobileController.text.length >=10) {
                                    String? msg = Validate.validateMobileAddress(
                                      textMobileController.text);
                                    if (msg == null){
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) =>
                                              SchoolPage(mobile: textMobileController.text)));
                                    }
                                    else{
                                      var snackBar = SnackBar(
                                          content: Text(msg));
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }
                                  }
                                  else {
                                    var snackBar = const SnackBar(
                                        content: Text('Please Enter your Mobile No.'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            );
          },
          backgroundColor: Colors.teal[800],
          child: const Icon(Icons.school_sharp),
        ),
      ),
    );
  }

  // final List items=[
  //   Colors.green, Colors.pink, Colors.black, Colors.blue, Colors.purple, Colors.lightBlue,Colors.yellow
  // ];
}
