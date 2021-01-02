import 'dart:io';
import 'package:flutter/material.dart';
import 'package:homecart/ItemsSupplier.dart';
import 'Picget.dart';
import 'package:image_picker/image_picker.dart';

class ImportItems extends StatefulWidget {
  @override
  _ImportItemsState createState() => _ImportItemsState();
}

class _ImportItemsState extends State<ImportItems> {

  String ItemName , Price , Quantity , others;

File selectedImage;
  PicgetMethods picgetMethods = new PicgetMethods();//  to connect firebase PicgetMethods class

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {

        selectedImage = image;

    });
  }



  @override
  Widget build(BuildContext context) {
    return
        SafeArea(
        child: DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Center(
        child: Text('Items', textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30.0),
    ),
    ),
    actions: [
    // action button
      IconButton(
        icon: Icon(Icons.file_upload),
        onPressed: () {},
      ),

    ],
    leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.push(context,MaterialPageRoute(builder: (context) => ItemsSupplier()));
    },
    ),


    elevation: 50.0,


    ),
          body: Container(child: Column(children: [
            SizedBox(height: 50,
            ),
            GestureDetector(
              onTap: () {
                getImage();
              },
              child

                  : Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape : BoxShape.circle
                ),
                width:MediaQuery.of(context).size.width ,
              child: Icon(Icons.add_a_photo,
              color: Colors.black,
              size: 40,)
              ),
            ),


           SizedBox(
             height: 10,
           ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [TextField(
                    decoration: InputDecoration(hintText: "Item Name"),
                        onChanged: (val) {
                      ItemName = val;
                        },

                  ),

            TextField(
                decoration: InputDecoration(hintText: "Price"),
                onChanged: (val) {
                  Price = val;
                },
            ),

            TextField(
                decoration: InputDecoration(hintText: "Quantity"),
                onChanged: (val) {
                  Quantity = val;
                },),

            TextField(
                decoration: InputDecoration(hintText: "Other Information"),
                onChanged: (val) {
                   others= val;
                },
            ),
                  ]
                ),
            )

          ],),),

    )
    )
        );
  }
}
