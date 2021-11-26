// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/route_name.dart';

class DaftarPage extends StatelessWidget {
  // const DaftarPage({Key? key}) : super(key: key);

  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController konfirmasiPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  var valSyarat = '0'.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color(0xFF549558),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.only(top: 65),
                child: Image.asset(
                  'assets/images/login/Logo Bulan.png',
                  fit: BoxFit.cover,
                  height: 160,
                ),
              ),
            ),
            Image.asset(
              'assets/images/login/Doted.png',
              fit: BoxFit.cover,
              height: 400,
            ),
            Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.fromLTRB(25, 260, 25, 50),
                children: [
                  Center(
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D4F2F),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // *Nama
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Text('Nama'),
                    ),
                  ),
                  TextFormField(
                    controller: namaController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                      hintText: 'Masukkan Nama',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/login/Icon Akun Green.png',
                          height: 5,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon Masukkan Nama';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  // *Email
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Text('Email'),
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                      hintText: 'Masukkan Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/login/Icon Email.png',
                          height: 5,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon Masukkan Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  // *Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Text('Password'),
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                      hintText: 'Masukkan Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/login/Icon Gembok.png',
                          height: 5,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon Masukkan Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  // *Konfirmasi Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Text('Konfirmasi Password'),
                    ),
                  ),
                  TextFormField(
                    controller: konfirmasiPasswordController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                      hintText: 'Masukkan Konfirmasi Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/login/Icon Gembok.png',
                          height: 5,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon masukkan Konfirmasi Password';
                      } else if (value != passwordController.text) {
                        return 'Konfirmasi Password tidak sama';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5),

                  // *Syarat Dan Ketentuan
                  Row(
                    children: [
                      Obx(
                        () => Radio(
                          value: '1',
                          groupValue: valSyarat.value,
                          onChanged: (value) {},
                          activeColor: Color(0xFF2D4F2F),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          valSyarat.value == '1'
                              ? valSyarat.value = '0'
                              : valSyarat.value = '1';
                          print(valSyarat.value);
                        },
                        child: SizedBox(
                          width: 285,
                          child: RichText(
                              text: TextSpan(
                                  text: 'Anda Menyetujui Semua ',
                                  style: TextStyle(color: Color(0xFF2D4F2F)),
                                  children: [
                                TextSpan(
                                  text: 'Syarat Dan Ketentuan ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'Pengunaan Serta '),
                                TextSpan(
                                  text: 'Kebijakan Privasi ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'Aplikasi.')
                              ])),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  // *Tombol Daftar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: ElevatedButton(
                      child: Text('Daftar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF2D4F2F),
                        onPrimary: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),
                  ),
                  SizedBox(height: 35),

                  SizedBox(
                    child: Stack(
                      children: [
                        Divider(
                          thickness: 2,
                          indent: 50,
                          endIndent: 50,
                        ),
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            child: Text(
                              ' Atau ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF2D4F2F),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),

                  // *Tombol Masuk
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: ElevatedButton(
                      child: Text('Masuk'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF93C993),
                        onPrimary: Color(0xFF2D4F2F),
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.black38),
                        ),
                      ),
                      onPressed: () {
                        Get.offAllNamed(RouteName.loginPage);
                      },
                    ),
                  ),
                  SizedBox(height: 20),

                  // *Tombol Google
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Stack(
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text('Google'),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 10),
                            primary: Color(0xFF2D4F2F),
                            onPrimary: Colors.white,
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Image.asset(
                          'assets/images/login/Logo Google.png',
                          // fit: BoxFit.cover,
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),

                  // *Tombol Facebook
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Stack(
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text('facebook'),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 10),
                            primary: Color(0xFF2D4F2F),
                            onPrimary: Colors.white,
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Image.asset(
                          'assets/images/login/Logo Facebook.png',
                          // fit: BoxFit.cover,
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
