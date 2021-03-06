import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
 String _restaurantName = 'Sai Cafe Dhaba';
 String _itemPrice = 'Rs 100';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8e3a0c),
        automaticallyImplyLeading: true,
        title: Text('Payment'),
      ),
      body: Container(
        color:Color(0xFF1c1a1c),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cash on Delivery',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18
                )),
                Radio(
                  focusColor: Colors.white,
                  value: 'value',
                  toggleable: true,
                )
              ],
            ),
            Divider(
              color: Colors.grey
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text('Have a promo code?',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFffdce0),
                    fontSize: 18
                  )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Promo Code Here',
                            hintStyle: TextStyle(color: Colors.grey)
                          ),
                        ),
                      ),
                      FlatButton(
                        child: Text('APPLY',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ))
                      )
                    ],
                  )
                ],
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
                width: double.infinity,
                color: Colors.black.withOpacity(0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Restaurant',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                        )),
                        Text(_restaurantName,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFffdce0),
                            fontSize: 18
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Price Details',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Item Price',style: TextStyle(
                            color: Colors.white,
                        )),
                        Text(_itemPrice,style: TextStyle(
                            color: Colors.white,
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Packing Charge',style: TextStyle(
                          color: Colors.white,
                        )),
                        Text(_itemPrice,style: TextStyle(
                          color: Colors.white,
                        )),
                      ],
                    ),
                    Divider(
                        color: Colors.grey
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('GST',style: TextStyle(
                          color: Colors.white,
                        )),
                        Text(_itemPrice,style: TextStyle(
                          color: Colors.white,
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount',style: TextStyle(
                          color: Colors.white,
                        )),
                        Text(_itemPrice,style: TextStyle(
                          color: Colors.white,
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Charge',style: TextStyle(
                          color: Colors.white,
                        )),
                        Text(_itemPrice,style: TextStyle(
                          color: Colors.white,
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wallet Amount',style: TextStyle(
                          color: Colors.white,
                        )),
                        Text(_itemPrice,style: TextStyle(
                          color: Colors.white,
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Amount Payable',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                        )),
                        Text(_itemPrice,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                        )),
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
                width: double.infinity,
                color: Colors.black.withOpacity(0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wallet Amount',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18
                        )),
                        Text('Use wallet Amount',style: TextStyle(
                            color: Colors.orange,
                        )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rs 0.0',style: TextStyle(
                            color: Colors.white,
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Use?',style: TextStyle(
                              color: Colors.white,

                            )),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      )
      );
  }
}
