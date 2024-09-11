import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/views/screens/home_screen/home_screen.dart';

import 'dash_bord_screen.dart';

class Sidebar extends StatefulWidget {
  final Function(String) onItemSelected;

  Sidebar({required this.onItemSelected});

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  String _selectedItem = 'Home'; // Keep track of selected item

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: 250,
      color: Colors.grey[200], // Background color for the sidebar
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: height * 0.07,
                    width: width * 0.07,
                  )),
              Divider(color: Colors.black),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.yellow, // Border color
                            width: 5, // Border width
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/man_image.png"),
                          radius: height * 0.06, // Adjust radius as needed
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Pooja Mishra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue.withOpacity(0.7))),
                        child: Center(
                            child: Text(
                              "Admin",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.black),
            ],
          ),

          Expanded(
            child: ListView(
              children: [
                SidebarItem(
                  icon: CupertinoIcons.house_alt_fill,
                  label: 'Home',
                  isSelected: _selectedItem == 'Home',
                  onTap: () => _onItemTapped('Home'),
                ),
                SidebarItem(
                  icon: CupertinoIcons.person_3,
                  label: 'Employees',
                  isSelected: _selectedItem == 'Employees',
                  onTap: () => _onItemTapped('Employees'),
                ),
                SidebarItem(
                  icon: Icons.checklist,
                  label: 'Attendance',
                  isSelected: _selectedItem == 'Attendance',
                  onTap: () => _onItemTapped('Attendance'),
                ),
                SidebarItem(
                  icon: Icons.calendar_month_outlined,
                  label: 'Summary',
                  isSelected: _selectedItem == 'Summary',
                  onTap: () => _onItemTapped('Summary'),
                ),
                SidebarItem(
                  icon: Icons.info_outline,
                  label: 'Information',
                  isSelected: _selectedItem == 'Information',
                  onTap: () => _onItemTapped('Information'),
                ),

                Container(
                  color: Colors.blue.withOpacity(0.2),
                  height: 50,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          'WORKSPACES',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.add),
                        ],
                      )
                    ],
                  ),
                ),
                SidebarItem(
                  label: 'Adstacks',
                  hasSubMenu: true,
                  isSelected: _selectedItem == 'Adstacks',
                  onTap: () => setState(() {
                    _selectedItem = 'Adstacks';
                  }),
                ),
                SidebarItem(
                  label: 'Finance',
                  hasSubMenu: true,
                  isSelected: _selectedItem == 'Finance',
                  onTap: () => setState(() {
                    _selectedItem = 'Finance';
                  }),
                ),
              ],
            ),
          ),

          // Footer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onItemTapped(String item) {
    setState(() {
      _selectedItem = item;
    });
    widget.onItemSelected(item); // Notify the parent widget
  }
}

class ContentArea extends StatelessWidget {
  final String selectedContent;

  ContentArea({required this.selectedContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.topLeft,
      child: _getContent(),
    );
  }

  // Function to get the corresponding screen content
  Widget _getContent() {
    switch (selectedContent) {
      case 'Home':
        return HomeScreen();
      case 'Employees':
        return EmployeeScreen();
      case 'Attendance':
        return AttendanceScreen();
      case 'Summary':
        return SummaryScreen();
      case 'Information':
        return InformationScreen();
      default:
        return Text('Main Content Area');
    }
  }
}


class SidebarItem extends StatelessWidget {
  final IconData? icon;
  final String label;
  final bool isSelected;
  final bool? hasSubMenu;
  final Function()? onTap;

  SidebarItem({this.icon, this.hasSubMenu, required this.label, this.isSelected = false, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.0), // Add padding to the container
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.transparent.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25), topLeft: Radius.circular(25)),
        ),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: icon != null
                ? Icon(
              icon,
              color: isSelected ? Colors.black : Colors.black.withOpacity(0.6),
            )
                : null,
          ),
          title: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.black.withOpacity(0.6),
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          trailing: hasSubMenu ?? false  ? Icon(Icons.keyboard_arrow_down_outlined) : null,

          onTap: onTap,
        ),
      ),
    );
  }
}
