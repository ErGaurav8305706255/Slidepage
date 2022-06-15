import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {

  List<String> name =[
    'January', 'February', 'March', 'April','May', 'June','July', 'August',
    'September', 'October','November','December'
  ];

  List<String> tempArray = [];




  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Account Details'),
    ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () async {
                          await showDialog(context: context, builder: (context){
                            return Dialog(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(40)
                             ),
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              child: _buildchild(context: context, index: index),
                            );

                        });
                        if (kDebugMode) {
                          print('MyValue');
                        }
                        if (kDebugMode) {
                          print(tempArray.toString());
                        }
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(name[index].toString()),
                          trailing: Container(
                            height: 40,width: 100,
                            decoration: BoxDecoration(
                                color: tempArray.contains(name[index].toString()) ? Colors.red : Colors.green,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text( tempArray.contains(name[index].toString()) ? 'Remove' :'Add'),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  ),
            )
          ],
        ),
      ),
    );
  }

  _buildchild({required BuildContext context,required int index}) => Container(
    height: 250,
    decoration: BoxDecoration(
      color: Colors.cyanAccent,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(borderRadius: BorderRadius.circular(40),
              child: Image.asset('assets/images.jpg',height: 80,width: 80,fit: BoxFit.cover)),
        ),
        const Text('Warring!!!',style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,
        )),
        const SizedBox(
          height: 5,
        ),
        const Text('Are You Sure',style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        )),
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
              Navigator.pop(context);
            }, child: const Text('No',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w700,color: Colors.teal,
            ),)),
            TextButton(
                onPressed: () {
              if(tempArray.contains(name[index].toString())){
                tempArray.remove(name[index].toString());
              }
              else{
                tempArray.add(name[index].toString());
              }
              setState(() {

              });
              Navigator.pop(context);
            }, child: const Text('Yes',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w700,color: Colors.teal
            ),
            )
            ),
          ],
        )
      ],
    ),
  );
}