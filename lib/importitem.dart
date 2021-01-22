import 'dart:io';
import 'package:flutter/material.dart';
import 'package:home/Suplierdis.dart';
import 'package:home/firebase.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImportItem extends StatefulWidget {
  static const String  id = 'importitem';
  @override
  _ImportItemState createState() => _ImportItemState();
}

class _ImportItemState extends State<ImportItem> {

  // ignore: non_constant_identifier_names
  String ItemName, Price, Quantity, Other_Information;

  File selectedImage;
  bool _isLoading = false;
  ConnectMethods connectMethods = new ConnectMethods();

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = image;
    });
  }
  uploadBlog() async {
    if (selectedImage != null) {
      setState(() {
        _isLoading = true;
      });

      /// uploading image to firebase storage
      //StorageReference firebaseStorageRef = FirebaseStorage.instance
      //  .ref()
      // .child("blogImages")
      // .child("${randomAlphaNumeric(9)}.jpg");

      // final StorageUploadTask task = firebaseStorageRef.putFile(selectedImage);

      //var downloadUrl = await (await task.onComplete).ref.getDownloadURL();
      // print("this is url $downloadUrl");

      // Map<String, String> blogMap = {
      // "imgUrl": downloadUrl,
      //  "ItemName": ItemName,
      //  "Price": Price,
      //  "Quantity": Quantity,
      //"Other_Information": Other_Information
      // };
      //  connectMethods.addData(blogMap).then((result) {
      //  Navigator.pop(context);
      // });
      // } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                actions: <Widget>[
                  GestureDetector(
                    onTap: () {
                      uploadBlog();
                    },


                    child: IconButton(
                      icon: Icon(Icons.file_upload),
                      onPressed: () {},
                    ),
                  ),

                ],
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Suplier()));
                  },
                ),


                elevation: 50.0,


              ),

              body: _isLoading
                  ? Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              )
                  : Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: selectedImage != null
                          ? Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(

                          borderRadius: BorderRadius.circular(20),
                          child: Image.file(
                            selectedImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                          : Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 170,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(6)),
                          width: MediaQuery.of(context).size.width,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                            size: 40,)
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: <Widget>[
                          TextField(
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
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(hintText: "Other_Information"),
                            onChanged: (val) {
                              Other_Information = val;
                            },
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}
