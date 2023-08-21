import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StudentRecordsPage extends StatefulWidget {
  @override
  _StudentRecordsPageState createState() => _StudentRecordsPageState();
}

class _StudentRecordsPageState extends State<StudentRecordsPage> {
  List<dynamic> _students = [];
  List<dynamic> _filteredStudents = [];

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getStudents();
  }

  Future<void> _getStudents() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
      setState(() {
        _students = json.decode(response.body);
        _filteredStudents = _students;
      });
    } else {
      throw Exception('Failed to load students');
    }
  }

  void _filterStudents(String searchQuery) {
    List<dynamic> filteredList = [];
    if (searchQuery.isNotEmpty) {
      _students.forEach((student) {
        if (student['title']
            .toLowerCase()
            .contains(searchQuery.toLowerCase())) {
          filteredList.add(student);
        }
      });
    } else {
      filteredList = _students;
    }
    setState(() {
      _filteredStudents = filteredList;
    });
  }

  void _navigateToDetails(dynamic student) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Records'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                _filterStudents(value);
              },
              decoration: InputDecoration(
                hintText: 'Search for students',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredStudents.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => _navigateToDetails(_filteredStudents[index]),
                  child: Card(
                    child: ListTile(
                      title: Text(_filteredStudents[index]['title']),
                      subtitle: Text(_filteredStudents[index]['title']),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StudentDetailsPage {}
