import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}
int currentIndex = 0;
final PageController controller = PageController();

List<String> images=[
  'assets/images.jpg',
  'assets/img.jpg',
  'assets/imgg.jpg',
  'assets/imge.jpg',
  'assets/image1.png',
];


// List<String> images=[
//   'https://i.postimg.cc/3w1yFb38/imgg.jpg',
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_MFHGXBM_XVd_DKxWfyUTVAP5aOKkPRWuAA&usqp=CAU',
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_MFHGXBM_XVd_DKxWfyUTVAP5aOKkPRWuAA&usqp=CAU',
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_MFHGXBM_XVd_DKxWfyUTVAP5aOKkPRWuAA&usqp=CAU',
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_MFHGXBM_XVd_DKxWfyUTVAP5aOKkPRWuAA&usqp=CAU',
// ];


class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index % images.length;
                  });
                },
                   // itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Image.asset(images[index % images.length],
                            fit: BoxFit.cover),
                        )
                        //     images[index],
                          )
                       );
                    // );
                  }
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 for(var i = 0; i<images.length; i++)
                   buildIndicator(currentIndex == i)
               ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {controller.jumpToPage(currentIndex - 1);},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(onPressed: () {controller.jumpToPage(currentIndex + 1);},
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget buildIndicator(bool isSelected){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: isSelected ? 12 : 8,
        width: isSelected ? 12 : 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black: Colors.black12,
        ),
      ),
    );
}
}