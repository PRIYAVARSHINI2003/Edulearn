import 'package:edusign/get%20started.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(sign());

class sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();
  final TextEditingController streamController = TextEditingController();
  final TextEditingController percentageController = TextEditingController();
  final TextEditingController udidController = TextEditingController();

  String? selectedEducation;

  List<String> educationLevels = [
    'Education',
    'High School',
    'Bachelor\'s Degree',
    'Master\'s Degree',
    'Ph.D.',
    'Other'
  ];
  String? selectedCategory;
  List<String> categories = [
    'Mute',
    'Ear',
    'Leg',
  ];

  @override
  void initState() {
    super.initState();
    selectedEducation = educationLevels.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Registeration Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => list()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email-Id'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: dobController,
                decoration: InputDecoration(labelText: 'Date of Birth'),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField(
                value: selectedEducation,
                items: educationLevels.map((educationLevel) {
                  return DropdownMenuItem(
                    value: educationLevel,
                    child: Text(educationLevel),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedEducation = value as String?;
                  });
                },
                decoration: InputDecoration(labelText: 'Education Details'),
              ),
              // ... Rest of your form fields
              if (selectedEducation == 'Bachelor\'s Degree' ||
                  selectedEducation == 'Master\'s Degree' ||
                  selectedEducation == 'Ph.D.')
                Column(
                  children: [
                    TextField(
                      controller: collegeController,
                      decoration:
                          InputDecoration(labelText: 'College/University'),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: streamController,
                      decoration: InputDecoration(labelText: 'Stream'),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: percentageController,
                      decoration: InputDecoration(labelText: 'Percentage'),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              if (selectedEducation == 'High School' ||
                  selectedEducation == 'Other')
                Column(
                  children: [
                    TextField(
                      controller: collegeController,
                      decoration: InputDecoration(labelText: 'School Name'),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: streamController,
                      decoration:
                          InputDecoration(labelText: 'Marks(Percentage)'),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              TextField(
                controller: udidController,
                decoration: InputDecoration(labelText: 'UDID Number'),
              ),
              DropdownButtonFormField(
                value: selectedCategory,
                items: categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value as String?;
                  });
                },
                decoration: InputDecoration(labelText: 'Category'),
              ),

              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  String name = nameController.text;
                  String college = collegeController.text;
                  String stream = streamController.text;
                  String percentage = percentageController.text;
                  String udidNumber = udidController.text;
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => get1()));

                  print('Name: $name');
                  print('Education Details: $selectedEducation');
                  if (selectedEducation == 'Bachelor\'s Degree') {
                    print('College/University: $college');
                    print('Stream: $stream');
                    print('Percentage: $percentage');
                  }
                  print('UDID Number: $udidNumber');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
                child: Text('Register'),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
