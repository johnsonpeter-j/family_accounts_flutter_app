import 'package:family_account_flutter_app/Drawer/drawer.component.dart';
import 'package:family_account_flutter_app/components/common/appbar.component.dart';
import 'package:family_account_flutter_app/components/transactions/TransactionTextTwo.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => SearchViewState();
}

class SearchViewState extends State<SearchView> {
  // Pre-initialized list of items with key-value pairs
  final List<Map<String, String>> _dropdownItems = [
    {"key": "Category", "value": "CATEGORY"},
    {"key": "Income", "value": "INCOME"},
    {"key": "Expense", "value": "EXPENSE"},
  ];

  // Array of items with key, value, and type
  final List<Map<String, dynamic>> transactionData = [
    {"key": "Investment", "value": "150,000.00", "type": "INCOME"},
    {"key": "Registeration Fee", "value": "50,000.00", "type": "EXPENSE"},
    {"key": "Income", "value": "1500.00", "type": "INCOME"},
    {"key": "Web Service", "value": "1000.00", "type": "EXPENSE"},
    {"key": "Subscription", "value": "150.00", "type": "INCOME"},
    {"key": "Domain Purchase", "value": "1500.00", "type": "EXPENSE"},
    {"key": "Invesment", "value": "150,000.00", "type": "INCOME"},
    {"key": "Registeration Fee", "value": "50,000.00", "type": "EXPENSE"},
    {"key": "Income", "value": "1500.00", "type": "INCOME"},
    {"key": "Web Service", "value": "1000.00", "type": "EXPENSE"},
  ];

  // Variable to hold the selected value
  String? _selectedKey;

  @override
  void initState() {
    super.initState();
    // Set default selection (optional)
    _selectedKey = _dropdownItems[0]["value"];
  }

  @override
  Widget build(BuildContext context) {
    // Get the height and width of the screen
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Card(
                    color: Color(0xFFD9D9D9), // Set background color here
                    elevation: 4, // Card shadow
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: const OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      10), // Space between text field and icon
                              const Icon(
                                Icons.search,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: DropdownButtonFormField<String>(
                              value: _selectedKey,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              items: _dropdownItems
                                  .map((Map<String, String> item) {
                                return DropdownMenuItem<String>(
                                  value: item["value"],
                                  child: Text(item["key"]!),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedKey = newValue;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xFFD9D9D9), // Set background color here
                    child: Padding(
                      padding: EdgeInsets.all(
                        20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Transaction',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Container(
                            color: const Color(
                                0xFFB2B2B2), // Set background color here
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  ...transactionData.map((item) {
                                    return TransactionTextTwo(
                                      color: item["type"] == "INCOME"
                                          ? Colors.green
                                          : Colors.red,
                                      label: item["key"],
                                      value: item["value"],
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
