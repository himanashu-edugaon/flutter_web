import 'package:flutter/material.dart';
import 'package:flutter_web/views/responsive.dart';
import 'dash_bord_widget.dart';



class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _selectedContent = 'Home'; // Track the selected content from sidebar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: _buildMobileLayout(),
        tablet: _buildTabletLayout(),
        desktop: _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        // App bar or similar UI for mobile
        AppBar(
          title: Text("Sidebar Example"),
        ),
        Expanded(
          child: ContentArea(
            selectedContent: _selectedContent,
          ),
        ),
      ],
    );
  }

  Widget _buildTabletLayout() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Sidebar(onItemSelected: _onItemSelected),
        ),
        Expanded(
          flex: 5,
          child: ContentArea(
            selectedContent: _selectedContent,
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Sidebar(onItemSelected: _onItemSelected), // Sidebar with fixed width
        Expanded(
          child: ContentArea(
            selectedContent: _selectedContent,
          ),
        ),
      ],
    );
  }

  void _onItemSelected(String item) {
    setState(() {
      _selectedContent = item;
    });
  }
}


class EmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is the Employees Screen');
  }
}

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is the Attendance Screen');
  }
}

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is the Summary Screen');
  }
}

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is the Information Screen');
  }
}
