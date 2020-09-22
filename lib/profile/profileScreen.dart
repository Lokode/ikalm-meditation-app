import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:icalm/login.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class ProfileScreen extends StatefulWidget {
  static String id = 'profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name;

  String photoUrl;

  bool isLoaded = false;

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  void initState() {
    super.initState();
    getProfileData();
  }

  void getProfileData() async {
    try {
      FirebaseUser user = await _auth.currentUser();

      DocumentSnapshot doc =
          await _db.collection("users").document(user.uid).get();

      setState(() {
        isLoaded = true;
        name = doc.data["displayName"];
        photoUrl = doc.data["photoUrl"];
      });
    } catch (e) {
      print(e);
    }
  }

  File _image;
 bool _isUploading = false;
  bool _isUploadCompleted = false;

  double _uploadProgress = 0;
  @override
  Widget build(BuildContext context) {
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

     uploadImage() async {
    try {
      if (_image != null) {
        setState(() {
          _isUploading = true;
          _uploadProgress = 0;
        });

        FirebaseUser user = await _auth.currentUser();

        String fileName = DateTime.now().millisecondsSinceEpoch.toString() +
            basename(_image.path);

        final StorageReference storageReference =
            _storage.ref().child("posts").child(user.uid).child(fileName);

        final StorageUploadTask uploadTask = storageReference.putFile(_image);

        final StreamSubscription<StorageTaskEvent> streamSubscription =
            uploadTask.events.listen((event) {
          var totalBytes = event.snapshot.totalByteCount;
          var transferred = event.snapshot.bytesTransferred;

          double progress = ((transferred * 100) / totalBytes) / 100;
          setState(() {
            _uploadProgress = progress;
          });
        });

        StorageTaskSnapshot onComplete = await uploadTask.onComplete;

        String photoUrl = await onComplete.ref.getDownloadURL();

        _db.collection("posts").add({
          "photoUrl": photoUrl,
          "name": user.displayName,
          "date": DateTime.now(),
          "uploadedBy": user.uid
        });

        // when completed
        setState(() {
          _isUploading = false;
          _isUploadCompleted = true;
        });

        streamSubscription.cancel();
        Navigator.pop(this.context);
      } 
    } catch (e) {
      print(e);
    }
  }

    if (isLoaded) {
      return Container(
          child: Column(children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(
              top: 50,
            ),
            child: GestureDetector(
              onTap: () {
                getImage();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ImagePicker(),
                //       fullscreenDialog: true,));
              },
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.teal,
                child: ClipOval(
                  child: SizedBox(
                    width: 170,
                    height: 170,
                    child: _image != null
                  ? Image.file(_image)
                  : Image(
                      image: AssetImage("images/aw1.png"),
                    
                            
                          ),
                  ),
                ),

                // child: Image(
                //   image: NetworkImage(photoUrl),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            RaisedButton(
                child: Text('Upload'),
                onPressed: () {
                  uploadImage();
                })
          ],
        ),
        RaisedButton(
          onPressed: () {
            // FirebaseAuth.instance.signOut();
            signOutGoogle();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) {
              return LoginPage();
            }), ModalRoute.withName('/'));
          },
          color: Colors.deepPurple,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sign Out',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ]));
    } else {
      return Column(
        children: <Widget>[
          Container(
            child: Center(
              child: Text("Loading"),
            ),
          ),
        ],
      );
    }
  }
}
//https://www.youtube.com/watch?v=CLkyqexBzVU
