import 'package:flutter/material.dart';

class DropdownLedger extends StatefulWidget {
  @override
  _DropdownLedgerState createState() => _DropdownLedgerState();
}

class _DropdownLedgerState extends State<DropdownLedger> {
  String _selectedItem = 'Daily'; // Initially selected item
  final List<String> _dropdownItems = ['Daily', 'Weekly','Monthly'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // Background color
        border: Border.all(color: Colors.grey), // Border color
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedItem,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue!;
            });
          },
          items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
 