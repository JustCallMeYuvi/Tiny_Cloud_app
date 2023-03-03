import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/home_page.dart';

class AccountCreateScreen extends StatefulWidget {
  const AccountCreateScreen({Key? key}) : super(key: key);

  @override
  _AccountCreateScreenState createState() => _AccountCreateScreenState();
}

class _AccountCreateScreenState extends State<AccountCreateScreen> {
  DateTime? _selectedDateTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDateTime = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedDateTime ?? DateTime.now()),
    );
    if (picked != null) {
      setState(() {
        _selectedDateTime = DateTime(
          _selectedDateTime!.year,
          _selectedDateTime!.month,
          _selectedDateTime!.day,
          picked.hour,
          picked.minute,
        );
      });
    }
  }

  String? _selectedItem;
  String? _phoneCode;
  String? _gender;
List<String> _genders = [
    'Male',
    'Female',
    'Transgender',
  ];

  List<String> _countryCodes = [
    '+91',
    '+962',
    '+90',
  ];
  List<String> _items = [
    'INDIA',
    'USA',
    'ENGLAND',
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.purpleAccent,
                height: 250,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Positioned(
                    top: height * .5,
                    left: width * .3,
                    child: Container(
                        height: height * .4,
                        width: width * .4,
                        child: Image.asset('images/splashcloud.png'))),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .4,
                  right: 35,
                  left: 35),
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'First Name',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text(
                    'Middle Name',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Last Name',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Country',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                DropdownButtonFormField<String>(
                  value: _selectedItem,
                  //dropdownColor: Colors.purpleAccent,
                  iconEnabledColor: Colors.blueAccent,
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  },
                  items: _items.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText:'    Select Country',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    'Mobile',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                DropdownButtonFormField<String>(
                  value: _phoneCode,
                  //dropdownColor: Colors.purpleAccent,
                  iconEnabledColor: Colors.blueAccent,
                  onChanged: (value) {
                    setState(() {
                      _phoneCode = value;
                    });
                  },
                  items: _countryCodes.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                SizedBox(
                  height: 05,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Birth Date',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                TextField(
                  readOnly: true,
                  onTap: () async {
                    await _selectDate(context);
                    await _selectTime(context);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      suffixIcon: Icon(Icons.calendar_today),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                  controller: TextEditingController(
                    text: _selectedDateTime == null
                        ? ''
                        : _selectedDateTime.toString(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Gender',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
               DropdownButtonFormField<String>(
                  value: _gender,
                  //dropdownColor: Colors.purpleAccent,
                  iconEnabledColor: Colors.blueAccent,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                  items: _genders.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: 'I agree to the',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold)),
                                  
                          TextSpan(
                              text: 'Terms&Conditions',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                                  TextSpan(
                              text: ' and',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold)),
                                  TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                    ),
                  ],
                ),
             
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountCreateScreen()),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                          Size(160, 40)), // set minimum width and height
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10)), // set padding
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blue), // set background color
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10))), // set border radius
                    ),
                    
                    child: Text(
                      'SIGN UP',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),

                    SizedBox(height: 30,
                    ),
                       Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: 'Already have account?',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
