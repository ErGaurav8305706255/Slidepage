
import 'package:flutter/material.dart';
// import 'package:slidepage/constant/string_constant.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  final List<String> items=["All","SuperCoin Zone", "Game Zone", "Video zone", "Offers", "Coupon", "Reward", "Bumpar offers"];

  final List item=[
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
       'title':'Babycare saving pass',
      'subtitle': 'Valid till 31 oct 2021',
    },
{
'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
'title':'\u{20B9}${9} Off on Floor cleaner',
'subtitle': 'Valid till 31 oct 2021',
},
{
'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
'title':'\u{20B9}${71} Off on Bathroom cleaner',
'subtitle': 'Valid till 31 oct 2021',
},
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'\u{20B9}${15} Off on Daber red past',
      'subtitle': 'Valid till 31 oct 2021',
    },
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'Grocery offers form Brand',
      'subtitle': 'Valid till 31 oct 2021',
    },
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'Babycare saving pass',
      'subtitle': 'Valid till 31 oct 2021',
    },
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'Babycare saving pass',
      'subtitle': 'Valid till 31 oct 2021',
    },
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'Babycare saving pass',
      'subtitle': 'Valid till 31 oct 2021',
    },
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'Babycare saving pass',
      'subtitle': 'Valid till 31 oct 2021',
    },
    {
      'image': 'https://cdn.futura-sciences.com/buildsv6/images/mediumoriginal/6/5/2/652a7adb1b_98148_01-intro-773.jpg',
      'title':'Babycare saving pass',
      'subtitle': 'Valid till 31 oct 2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back,color: Colors.white,size: 20,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('My Rewards', style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                      Spacer(),
                      Text('Add Coupon',style: TextStyle(
                        fontSize: 15,color: Colors.white,
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(onTap: () {},
                    child: Container(decoration: const BoxDecoration(
                    ),
                        height: 50,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount : items.length, itemBuilder: (context, index){
                        return Container(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1,color: Colors.black12)
                          ),
                          child: Center(
                            child: Text(items[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                          ),
                        );
                      }
                      )
                    ),
                  ),
                ),
                Container(
                  color: Colors.black12,
                  height: 600,
                  width: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    children: List.generate(item.length, (index) {
                      return _buildCardViewWidget(
                          imageUrl: item[index]['image'],
                          title: item[index]['title'],
                          subtitle: item[index]['subtitle']);
                    }),
                  ),
                ),


                // Container(color: Colors.black12,
                //   height: 600,
                //   child: GridView.builder(
                //       itemCount: 8,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 2
                //       ), itemBuilder: (ctx, index){
                //     return Container(
                //       margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                //       padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           color: Colors.white,
                //           border: Border.all(color: Colors.black12,width: 1,)
                //       ),
                //       child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           ClipRRect(
                //             borderRadius: BorderRadius.circular(40),
                //             child: Image.asset('assets/flipkart.png',
                //               height: 70,
                //               width: 70,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //           SizedBox(
                //             height: 5,
                //           ),
                //           Text('\u{20B9}${9} Off on Bathroom cleaner',textAlign: TextAlign.center,
                //             style: TextStyle(
                //               fontSize: 13,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.black,
                //             ),
                //           ),
                //           SizedBox(height: 5,
                //           ),
                //           Text('Valid till 31 oct 2021',
                //             style: TextStyle(
                //               fontSize: 10,
                //               color: Colors.black,
                //             ),
                //           ),
                //           SizedBox(height: 10,
                //           ),
                //           Text('T&C',textAlign: TextAlign.center,
                //             style: TextStyle(
                //               fontSize: 13,
                //               fontWeight: FontWeight.w700,
                //               color: Colors.blue,
                //             ),
                //           )
                //         ],
                //       ),
                //     );
                //   }),
                // ),



              ],
            ),
          ),
    ),
    );
  }

  _buildCardViewWidget(
      {required String imageUrl,
        required String title,
        required String subtitle}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black12, width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageUrl,
                    ),
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black38,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            const Expanded(
              child: Text(
                'T&C',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


