import 'package:flutter/material.dart';
class JournalEntryForm extends StatefulWidget {
  @override
  _JournalEntryFormState createState() => _JournalEntryFormState(); 
}

class _JournalEntryFormState extends State<JournalEntryForm> {

  final formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
    return MaterialApp
    (home: Scaffold(
      // padding: const EdgeInsets.all(10),
      body: Form
      (    
        key: formKey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
            labelText: 'Title', border: OutlineInputBorder()
                 ),
          onSaved: (value){
            // Store value in some object
          },
          validator: (value)  {
            if (value != null && value.isEmpty){
              return 'Please enter a title';
            }else{
              return null;
            }
          }
          ), // TextField
           SizedBox (height: 10),
            Builder (builder: (context) => RaisedButton (
            onPressed: () {
              if (formKey.currentState!.validate()){
                formKey.currentState!.save();
                Navigator.of(context, rootNavigator: true).pop();
              }
            },
             child: Text(' Save Entry')
            )) // RaisedButton
        ]
       ) 
      ) 
    )); 
  }
}