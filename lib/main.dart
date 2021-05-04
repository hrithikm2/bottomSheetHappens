import 'package:bottomsheet/orderDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
      ),
      darkTheme: ThemeData.dark(
      ),
      home: TestBottomSheet()));
}

class TestBottomSheet extends StatefulWidget {
  @override
  _TestBottomSheetState createState() => _TestBottomSheetState();
}

class _TestBottomSheetState extends State<TestBottomSheet> {
  List<String> addressLeadingList = ['hello', 'hello', 'hello'];
  List<String> addressList = [
    'tes tes tes, Khanvel Rd, Silvassa, Dadra and Nagar Haveli 396230, India',
    'tes tes tes, Khanvel Rd, Silvassa, Dadra and Nagar Haveli 396230, India',
    'tes tes tes, Khanvel Rd, Silvassa, Dadra and Nagar Haveli 396230, India'
  ];
  String _address;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            child: Center(
                child: CupertinoButton(
                    onPressed: () {
                      _onPressed();
                    },
                    child: Text('Hello')))),
      ],
    );
  }

  void _onPressed() {
    if(_address == null)
      {
    showModalBottomSheet<void>(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF1c1a1c),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  'Choose a new delivery address',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Colors.transparent,
                  child:
                      //ADD NEW ADDRESS BUTTON
                      MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '+',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Add New Address',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //LIST TILES FOR ADDRESS
                Expanded(
                  child: ListView.builder(
                      itemCount: addressList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                _address = addressList[index];
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                child: Card(
                                  color: Colors.transparent,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.network(
                                          'https://www.designindaba.com/sites/default/files/styles/scaledlarge/public/node/news/23566/sonic-burger.jpg?itok=zGk5pjcI',scale: 10),
                                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment : CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                            Text(
                                              addressLeadingList[index],
                                              style: TextStyle(color: Colors.white,
                                              fontSize: 18),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                            Text(
                                              addressList[index],
                                              style: TextStyle(color: Colors.grey),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                          ],
                        );
                      }),
                )
              ],
            ),
          );
        });}
    else
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetails()));
      }
  }
}
