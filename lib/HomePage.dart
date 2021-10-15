// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  var name = "";
  var email = "";
  var password = "";

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "User Name:",
                labelStyle: TextStyle(fontSize: 20),
              ),
              controller: nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Name";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email:",
                labelStyle: TextStyle(fontSize: 20),
              ),
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Email:";
                } else if (!value.contains('@')) {
                  return "Please Enter Valid Email";
                }
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password:",
                labelStyle: TextStyle(fontSize: 20),
              ),
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Password:";
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  // ignore: empty_statements
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      name = nameController.text;
                      email = emailController.text;
                      password = passwordController.text;
                    });
                  }
                },
                child: Text("Submit")),
            SizedBox(
              height: 300,
              width: 300,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text("Name = $name"),
                    Text("Email = $email"),
                    Text("Password = $password"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
