import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:aquadiary/pages/fish.dart';
import 'package:aquadiary/pages/card.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  int _selectedIndex = 0;

  List<Fish> fishList = [];

  @override
  void initState() {
    super.initState();
    loadFishList();
  }

  // Load fish list from SharedPreferences
  Future<void> loadFishList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? fishJsonList = prefs.getStringList('fishList');

    if (fishJsonList != null) {
      setState(() {
        fishList = fishJsonList
            .map((fishJson) => Fish.fromJson(jsonDecode(fishJson)))
            .toList();
      });
    }
  }

  // Save fish list to SharedPreferences
  Future<void> saveFishList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> fishJsonList =
    fishList.map((fish) => jsonEncode(fish.toJson())).toList();
    await prefs.setStringList('fishList', fishJsonList);
  }

  // Clear fish list (optional for testing)
  Future<void> clearFishList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('fishList');
    setState(() {
      fishList.clear();
    });
  }

  // Build body page based on selected tab
  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return fishList.isEmpty
            ? Center(
          child: Text(
            'No fish added yet!',
            style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
          ),
        )
            : ListView.builder(
          itemCount: fishList.length,
          itemBuilder: (context, index) {
            return FishCard(fish: fishList[index]);
          },
        );
      case 1:
        return Center(
          child: Text(
            'Track water parameters here!',
            style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
          ),
        );
      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF006D77),
        title: const Text(
          'AquaCare',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Clear All Fish',
            onPressed: () async {
              final confirm = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Clear All Fish?'),
                  content: const Text(
                      'This will remove all saved fish. Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx, false),
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(ctx, true),
                      child: const Text('Confirm'),
                    ),
                  ],
                ),
              );

              if (confirm == true) {
                clearFishList();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _buildPage(_selectedIndex),
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/add');
          if (result != null && result is Fish) {
            setState(() {
              fishList.add(result);
            });
            saveFishList(); // save to persistent storage
          }
        },
        backgroundColor: const Color(0xFF006D77),
        child: const Icon(Icons.add),
      )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF006D77),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Fish List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Water',
          ),
        ],
      ),
    );
  }
}
