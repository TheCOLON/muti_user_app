import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leave Form'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 10),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: startDateController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Start Date'),
              validator: (value) {
                if (value == null ||value.isEmpty) {
                  return 'Please enter the start date';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: endDateController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'End Date'),
              validator: (value) {
                if (value == null ||value.isEmpty) {
                  return 'Please enter the end date';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: reasonController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Reason'),
              validator: (value) {
                if (value == null ||value.isEmpty) {
                  return 'Please enter a reason for your leave';
                }
                return null;
              },
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    // var isFormValid = formKey.currentState!.validate();
                    // if (isFormValid) {
                    //   Employee newsEmployeelist = Employee(
                    //       employeeNumber: employeeNumberController.text,
                    //       name: nameController.text,
                    //       birthday: birthdateController.text,
                    //       gender: selectedGender,
                    //       address: addressController.text);
                    //
                    //   Navigator.pop(context, newsEmployeelist);
                    //
                    //   // Save to database
                    // }
                  },
                  child: const Text('Submit')),
            )
          ],
        ),
      ),
    );
  }
}
