import 'package:flutter_web/material.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.50,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.lightBlue)),
                child: getContactUsTextField(
                    textInputType: TextInputType.text,
                    labelText: "Name",
                    hintText: "Tell us your name",
                    controller: nameController,
                    maxLines: 1),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue)),
                  child: getContactUsTextField(
                      textInputType: TextInputType.emailAddress,
                      labelText: "Email",
                      hintText: "What is your email",
                      controller: emailController,
                      maxLines: 1)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                height: 500.0,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.lightBlue)),
                constraints: BoxConstraints(maxHeight: 500.0),
                child: getContactUsTextField(
                    textInputType: TextInputType.multiline,
                    labelText: "How can we help you?",
                    hintText: "Details",
                    controller: detailsController,
                    maxLines: null),
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(4.0),
                elevation: 5.0,
                child: MaterialButton(
                  minWidth: 225.0,
                  child: getSubmitButtonChild(loading: false),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextField getContactUsTextField(
      {TextInputType textInputType,
      TextEditingController controller,
      String hintText,
      String labelText,
      int maxLines}) {
    return TextField(
      keyboardType: textInputType,
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.white70),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8.0),
          hintStyle: TextStyle(color: Colors.white70),
          hintText: hintText,
          labelText: labelText),
    );
  }

  Widget getSubmitButtonChild({bool loading}) {
    if (!loading) {
      return Text("Submit");
    } else {
      return SizedBox(
        height: 25.0,
        width: 25.0,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          strokeWidth: 3.0,
        ),
      );
    }
  }
}
