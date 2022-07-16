import 'package:flutter/material.dart';
import './sign_up_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: MediaQuery.of(context).orientation == Orientation.portrait ? _quayDoc(): _quayNgang(),
    );
  }

  Widget _quayDoc() {
    return Column(
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
                    labelText: 'Số điện thoại',
                    hintText: 'Nhập số điện thoại',
                  ),
                  autofocus: false,
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mật khẩu',
                    hintText: 'Nhập mật khẩu',
                  ),
                  autofocus: false,
                  autocorrect: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, SignUpPage());
                          },
                          child: const Text(
                            'Đăng ký',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 1, 150, 135),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Đăng nhập',
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
        ),
        Expanded(child: Container ()),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'HotLine: ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: '1800.1186',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 16, 144, 128),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _quayNgang() {
    return SingleChildScrollView(
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
                      labelText: 'Số điện thoại',
                      hintText: 'Nhập số điện thoại',
                    ),
                    autofocus: false,
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mật khẩu',
                      hintText: 'Nhập mật khẩu',
                    ),
                    autofocus: false,
                    autocorrect: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, SignUpPage());
                            },
                            child: const Text(
                              'Đăng ký',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 1, 150, 135),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Đăng nhập',
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
          ),
          // Expanded(child: Container ()),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'HotLine: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: '1800.1186',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 16, 144, 128),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
