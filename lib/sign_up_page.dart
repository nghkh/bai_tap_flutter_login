import 'package:flutter/material.dart';

class SignUpPage extends MaterialPageRoute<void> {
  SignUpPage()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              backgroundColor: const Color.fromARGB(255, 250, 250, 250),
              body: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(height: 150),
                            Image.asset(
                              'asset/logo_vins.png',
                              width: 120,
                              height: 120,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Họ & tên',
                                  hintText: 'Nhập họ & tên'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Số điện thoại',
                                  hintText: 'Nhập số điện thoại'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Mật khẩu',
                                  hintText: 'Nhập mật khẩu'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 1, 150, 135),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Đăng ký',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
}
