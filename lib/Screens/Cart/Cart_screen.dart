import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mitienda2/components/rounded_button.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  _cart_screenState createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.orange,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  product_card(),
                  product_card(),
                  product_card(),
                  product_card(),
                  product_card(),
                  product_card(),
                  product_card()
                ],
              ),
            ),
          ),
          Expanded(
            flex:2,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              elevation: 20,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total:',
                            style: TextStyle(fontSize: 20, color: Colors.black)),
                        Text('15Bs',
                            style: TextStyle(fontSize: 20, color: Colors.black)),
                      ],
                    ),
                    Text('Entrega en la tienda de Pepita a 200m', style: TextStyle(fontSize: 15)),
                    RoundedButton(text: "Realizar pedido", press: (){
                      print("pedido realizado");
                    })
                  ]
                ),
              ),
            )
          )
        ],
      )
    );
  }

  SizedBox product_card() {
    return SizedBox(
      height: 130,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Expanded(
            flex: 2,
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FittedBox(
              child: Icon(CupertinoIcons.airplane),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Oreo',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(
                          CupertinoIcons.delete),
                    ],
                  ),
                  Text(
                    '250g, 4 galletas',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        quantity(),
                        Text('15Bs',
                        style: TextStyle(color: Colors.grey, fontSize: 18),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class quantity extends StatefulWidget {
  const quantity({Key? key}) : super(key: key);

  @override
  _quantityState createState() => _quantityState();
}

class _quantityState extends State<quantity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(4))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
              onTap: () {
                print('less');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.remove,
                  size: 16,
                ),
              )),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.grey,
              child: Text('1')),
          InkWell(
              onTap: () {
                print('sumar');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.add,
                  size: 16,
                ),
              )),
        ],
      ),
    );
  }
}
