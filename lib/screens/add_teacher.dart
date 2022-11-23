import 'package:flutter/material.dart';

class AddTeacher extends StatefulWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  State<AddTeacher> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Add Teacher"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Teacher Name',
                    labelText: 'Teacher Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'please provide english marks';
                  } else {
                   // eng = int.parse(text);
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Teacher Designation',
                    labelText: 'Teacher Designation',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'please provide physics marks';
                  } else {
                    //phy = int.parse(text);
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Teacher Dept',
                    labelText: 'Teacher Dept',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'please provide math marks';
                  } else {
                    // math = int.parse(text);
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),

              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.red,
                          ),
                          onPressed: () {
                            formKey.currentState!.reset();
                          },
                          child: const Text('Clear'))),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {

                              // Insert into DB

                              Navigator.pop(context);
                            }
                          },
                          child: const Text('Save'))),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              // Text('Obtained Marks: $obtMarks'),
            ],
           ),
        ),
      ),
    ),
    );
  }
}
