import 'package:family_account_flutter_app/Drawer/drawer.component.dart';
import 'package:family_account_flutter_app/components/common/appbar.component.dart';
import 'package:family_account_flutter_app/components/common/button.component.dart';
import 'package:family_account_flutter_app/components/common/form_field.component.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'dart:async'; // Import for Timer

class AddEntry extends StatefulWidget {
  const AddEntry({super.key});

  @override
  State<AddEntry> createState() => _AddEntryState();
}

class _AddEntryState extends State<AddEntry> {
  final TextEditingController entryTypeController = TextEditingController();
  final TextEditingController organizationController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController borrowIdController = TextEditingController();

  late Timer _timer;
  String _formattedDate = '';

  @override
  void initState() {
    super.initState();
    _updateDateTime(); // Initial call to set the date and time
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateDateTime(); // Update every second
    });
  }

  void _updateDateTime() {
    setState(() {
      DateTime now = DateTime.now();
      _formattedDate = DateFormat('dd/MM/yyyy HH:mm:ss').format(now);
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: DrawerComponent(),
      body: Container(
        width: double.infinity, // 100% width
        height: double.infinity, // 100% height
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0XFF014E9D),
              const Color(0XFF6CB1F7),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: Center(
                    child: Text(
                      'Data Entry',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        FormFieldComponent(
                          title: 'Entry Type',
                          placeholderText: 'Entry Type',
                          errorText: '',
                          controller: entryTypeController,
                          keyboardType: TextInputType.text,
                        ),
                        FormFieldComponent(
                          title: 'Organization',
                          placeholderText: 'Organization',
                          errorText: '',
                          controller: organizationController,
                          keyboardType: TextInputType.text,
                        ),
                        FormFieldComponent(
                          title: 'Category',
                          placeholderText: 'Category',
                          errorText: '',
                          controller: categoryController,
                          keyboardType: TextInputType.text,
                        ),
                        FormFieldComponent(
                          title: 'Amount',
                          placeholderText: 'Amount',
                          errorText: '',
                          controller: entryTypeController,
                          keyboardType: TextInputType.text,
                        ),
                        FormFieldComponent(
                          title: 'Description',
                          placeholderText: 'Description',
                          errorText: '',
                          controller: entryTypeController,
                          keyboardType: TextInputType.text,
                        ),
                        FormFieldComponent(
                          title: 'Borrower ID',
                          placeholderText: 'Borrower ID',
                          errorText: '',
                          controller: entryTypeController,
                          keyboardType: TextInputType.text,
                        ),
                        Text(
                          "Date : $_formattedDate",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonComponent(
                              labelText: 'Submit',
                              onClicked: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Row(
                                      children: <Widget>[
                                        // add your preferred icon here
                                        Icon(
                                          Icons.verified,
                                          color: Colors.green,
                                        ),
                                        // add your preferred text content here
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                              'Data Entered Successfully!'),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            ButtonComponent(
                              labelText: 'Close',
                              onClicked: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
