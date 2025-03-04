import 'package:family_account_flutter_app/Drawer/drawer.component.dart';
import 'package:family_account_flutter_app/components/common/appbar.component.dart';
import 'package:family_account_flutter_app/components/transactions/TransactionTextOne.dart';
import 'package:family_account_flutter_app/components/transactions/TransactionTextTwo.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text(
                      'Transactions',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    child: Column(
                      children: [
                        TransactionTextOne(
                          color: Colors.green,
                          label: 'Opening Balance',
                          value: '41,000.00',
                        ),
                        TransactionTextOne(
                          color: Colors.green,
                          label: 'Today Income',
                          value: '1,000.00',
                        ),
                        TransactionTextOne(
                          color: Colors.red,
                          label: 'Today Expense',
                          value: '2,000.00',
                        ),
                        TransactionTextOne(
                          color: Colors.orangeAccent,
                          label: 'Today Net balance ',
                          value: '-1,000.00',
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            'Last 10 Transactions',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TransactionTextTwo(
                              color: Colors.green,
                              label: 'Investment',
                              value: "150,000.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.red,
                              label: 'Registration Fee',
                              value: "50,000.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.green,
                              label: 'Income',
                              value: "1500.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.red,
                              label: 'Web Service',
                              value: "1000.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.green,
                              label: 'Subscription',
                              value: "150.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.red,
                              label: 'Domain Purchase',
                              value: "1500.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.green,
                              label: 'Website',
                              value: "200.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.red,
                              label: 'Payment gateway',
                              value: "3000.00",
                            ),
                            TransactionTextTwo(
                              color: Colors.green,
                              label: 'Project Advance',
                              value: "500.00",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
