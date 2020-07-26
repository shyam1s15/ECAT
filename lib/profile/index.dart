import 'package:flutter/material.dart';

class ProfileBase extends StatefulWidget {
  @override
  _ProfileBaseState createState() => _ProfileBaseState();
}

class _ProfileBaseState extends State<ProfileBase> {
  // dynamic userName = "something", phoneNo, address, description;
  List<dynamic> interests = [];

  final userNameController = TextEditingController(text: "Bhuro Natho");
  final phoneNoController = TextEditingController(text: "9106608886");
  final addressController = TextEditingController(
      text: 'I am Passionate about life, Being moral is more healty');
  final descriptionController = TextEditingController(
      text: 'Public rajmajal, behind ambani towwer, Tajmahal');

  Icon _userIcon = Icon(Icons.person_outline);
  @override
  void initState() {
    //   // TODO: implement initState
    super.initState();
    // userNameController.text = userNameController.text;

    userNameController.addListener(_getLatestUserName());
    phoneNoController.addListener(_getLatestPhoneNo());
    addressController.addListener(_getLatestAddress());
    descriptionController.addListener(_getLatestDescription());
  }

  @override
  void dispose() {
    userNameController.dispose();
    phoneNoController.dispose();
    addressController.dispose();
    descriptionController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Colors.white,
      ),
      home: Builder(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Container(
              child: Row(
                children: <Widget>[
                  // close Icon
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.pop(context)),
                  ),
                  // Text containg Ecat
                  Container(
                    alignment: Alignment.center,
                    child: Text('Account'),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                // Text('Hellow everyone'),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://res.cloudinary.com/dpccmon9r/image/upload/v1594902375/parth_dryk9c.png'),
                  ),
                ),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(userNameController.text,
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold)),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 35.0,
                          ),
                          onPressed: () => _editName(),
                        ),
                      ]),
                ),
                // phone Number
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(phoneNoController.text,
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 35.0,
                        ),
                        onPressed: () => _editNumber(),
                      ),
                    ],
                  )),
                ),

                // Description
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(descriptionController.text,
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 35.0,
                        ),
                        onPressed: () => _editDescription(),
                      ),
                    ],
                  )),
                ),
                // Address
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(addressController.text,
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 35.0,
                        ),
                        onPressed: () => _editAddress(),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),

        // Called when one of the [items] is tapped.
      ),
    );
  }

  Future<void> _editName() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Name'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'My good name is jerry',
                    // labelText: 'Enter your username'
                  ),
                  controller: userNameController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                // print(userNameController.text);
                setState(() {
                userNameController.text = userNameController.text;                  
                });
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          elevation: 24,
          backgroundColor: Colors.grey[100],
          // shape: CircleBorder(),
        );
      },
    );
  }

  Future<void> _editNumber() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Number'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '+91 888999000',
                    // labelText: 'Enter your username'
                  ),
                  controller: phoneNoController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                setState(() {
                  phoneNoController.text = phoneNoController.text;
                });
                // print(userNameController.text);
                // update phone number, send request.
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          elevation: 24,
          backgroundColor: Colors.grey[100],
          // shape: CircleBorder(),
        );
      },
    );
  }

  Future<void> _editDescription() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Description'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '+91 888999000',
                    // labelText: 'Enter your username'
                  ),
                  controller: descriptionController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                // print(userNameController.text);
                // update Description, send request.
                setState(() {
                  descriptionController.text = descriptionController.text;
                });
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          elevation: 24,
          backgroundColor: Colors.grey[100],
          // shape: CircleBorder(),
        );
      },
    );
  }

  Future<void> _editAddress() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Address'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Public rajmajal, behind ambani towwer, Tajmahal',
                    // labelText: 'Enter your username'
                  ),
                  controller: addressController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                // print(userNameController.text);
                // update Address, send request.
                setState(() {
                  addressController.text = addressController.text;
                });
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          elevation: 24,
          backgroundColor: Colors.grey[100],
          // shape: CircleBorder(),
        );
      },
    );
  }

  _getLatestUserName() {}

  _getLatestPhoneNo() {}

  _getLatestAddress() {}

  _getLatestDescription() {}
}
