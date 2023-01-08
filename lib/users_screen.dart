import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final String mobile;

  UserModel({required this.name, required this.mobile});
}

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(name: "ahmad", mobile: "0599101202"),
    UserModel(name: "Mohammad", mobile: "0123456789"),
    UserModel(name: "Mahmoued", mobile: "0147258369"),
    UserModel(name: "Omar", mobile: "9876543210"),
    UserModel(name: "Ibrahem", mobile: "0258741369"),
    UserModel(name: "Issa", mobile: "0111111111"),
    UserModel(name: "ahmad", mobile: "0597369852"),
    UserModel(name: "Yazan", mobile: "009752148"),
    UserModel(name: "Ihab", mobile: "02589631470"),
    UserModel(name: "Tawfiq", mobile: "0147855536"),
    UserModel(name: "ahmad", mobile: "0599101202"),
    UserModel(name: "Mohammad", mobile: "0123456789"),
    UserModel(name: "Mahmoued", mobile: "0147258369"),
    UserModel(name: "Omar", mobile: "9876543210"),
    UserModel(name: "Ibrahem", mobile: "0258741369"),
    UserModel(name: "Issa", mobile: "0111111111"),
    UserModel(name: "ahmad", mobile: "0597369852"),
    UserModel(name: "Yazan", mobile: "009752148"),
    UserModel(name: "Ihab", mobile: "02589631470"),
    UserModel(name: "Tawfiq", mobile: "0147855536"),
  ];
  UserScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(
          width: double.infinity,
          child: Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      userListTile(users[index], index),
                  separatorBuilder: (context, index) => Divider(
                        thickness: 3,
                        endIndent: 10,
                        indent: 10,
                        color: Colors.grey[200],
                      ),
                  itemCount: users.length)),
        ),
      ),
    );
  }

  Widget userListTile(UserModel user, int index) => ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            "$index",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          user.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          user.mobile,
          style: const TextStyle(fontSize: 15),
        ),
      );
}
