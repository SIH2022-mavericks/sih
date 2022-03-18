import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  String imageUrl =
      "https://cdni.iconscout.com/illustration/premium/thumb/camera-1884989-1597908.png";

  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    PickedFile image;
    //Check Permissions
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      //Select Image
      image = await _imagePicker.getImage(source: ImageSource.gallery);
      var file = File(image.path);
      String fileName = file.path.split('/').last;

      if (image != null) {
        //Upload to Firebase
        var snapshot = await _firebaseStorage
            .ref()
            .child('images/' + '${fileName}')
            .putFile(file)
            .onComplete;
        var downloadUrl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: (imageUrl != null)
                  ? Image.network(imageUrl)
                  : Image.network(
                      'https://cdni.iconscout.com/illustration/premium/thumb/camera-1884989-1597908.png')),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: RaisedButton(
              child: Text("Upload Image",
                  style: TextStyle(
                      color: Color(0xffcdc1ff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              onPressed: () {
                uploadImage();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Color(0xffcdc1ff),
                  )),
              elevation: 5.0,
              color: Color(0xFF21295c),
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              splashColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
