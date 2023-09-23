import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home:const HomePage() ,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController motherLastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Formulation Page",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(child: Text("Formulation Page", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent),
            )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter your name",
                    labelText: "Name"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: lastNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter your last Name",
                    labelText: "Last Name"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: motherLastNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter your mother's last name",
                    labelText: "Mother's Last Name"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter your phone",
                    labelText: "Phone"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter your email",
                    labelText: "Email"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter your age",
                    labelText: "Age"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0, right: 150.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          LandingPage(
                            userName: nameController.text.trim(),
                            userLastName: lastNameController.text.trim(),
                            userMotherLastName: motherLastNameController.text.trim(),
                            userPhone: phoneController.text.trim(),
                            userEmail: emailController.text.trim(),
                            userAge: ageController.text.trim(),
                          )),
                    ).then((res){
                      nameController.clear();
                      lastNameController.clear();
                      motherLastNameController.clear();
                      phoneController.clear();
                      emailController.clear();
                      ageController.clear();

                    });
                  },
                  child: const Text(
                    "Send",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ))
        );
  }
}
