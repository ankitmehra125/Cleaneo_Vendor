import 'package:flutter/material.dart';

class DailyEarnings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Daily Earnings Widget'),
      ),
    );
  }
}

class WeeklyEarnings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Weekly Earnings Widget'),
      ),
    );
  }
}

class MonthlyEarnings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Monthly Earnings Widget'),
      ),
    );
  }
}

class NavigationWithTabs extends StatefulWidget {
  const NavigationWithTabs({Key? key}) : super(key: key);

  @override
  _NavigationWithTabsState createState() => _NavigationWithTabsState();
}

class _NavigationWithTabsState extends State<NavigationWithTabs> {
  // Index of the currently selected tab
  int _selectedIndex = 0;

  // Custom tab names
  final List<String> _tabNames = ['Daily', 'Weekly', 'Monthly'];

  // Widget builders for each tab
  final List<Widget Function()> _tabBuilders = [
    () => DailyEarnings(),
    () => WeeklyEarnings(),
    () => MonthlyEarnings(),
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _tabNames.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: mQuery.size.width * 0.32,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: _selectedIndex == index ? Color(0xFF29B2FE) : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _tabNames[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == index ? Color(0xFF29B2FE) : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        _tabBuilders[_selectedIndex](), // Show the selected widget
      ],
    );
  }
}
