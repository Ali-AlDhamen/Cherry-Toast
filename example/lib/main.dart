import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cherry Toast Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ExampleApp(),
      ),
    );
  }
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '🍒 🍒',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            'Cherry Toasts',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text('🍒 Info Cherry Toast'),
            onPressed: () {
              CherryToast.info(
                title: 'User added',
                action: 'Display information',
                actionHandler: () {},
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('🍒 Error Cherry Toast'),
            onPressed: () {
              CherryToast.error(
                title: '',
                enableIconAnimation: false,
                displayTitle: false,
                description: 'Invalid account information',
                animationType: ANIMATION_TYPE.fromRight,
                animationDuration: Duration(milliseconds: 1000),
                autoDismiss: true,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('🍒 Bottom Cherry Toast'),
            onPressed: () {
              CherryToast(
                icon: Icons.alarm_add,
                themeColor: Colors.pink,
                title: '',
                displayTitle: false,
                description: 'A bottom cherry toast example',
                toastPosition: POSITION.bottom,
                animationDuration: Duration(milliseconds: 1000),
                autoDismiss: true,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('🍒 Warning Cherry Toast'),
            onPressed: () {
              CherryToast.warning(
                title: '',
                displayTitle: false,
                description: 'All information may be deleted after this action',
                animationType: ANIMATION_TYPE.fromTop,
                action: 'Backup data',
                actionHandler: () {},
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('🍒 Success Cherry Toast'),
            onPressed: () {
              CherryToast.success(
                title: 'The simplest cherry toast',
                borderRadius: 0,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('🍒 Rigth Layout Cherry Toast'),
            onPressed: () {
              CherryToast(
                icon: Icons.car_repair,
                themeColor: Colors.green,
                title: '',
                displayTitle: false,
                description: 'هذا مثال تصميم من اليمين',
                toastPosition: POSITION.bottom,
                layout: TOAST_LAYOUT.rtl,
                animationType: ANIMATION_TYPE.fromRight,
                action: 'انقر هنا',
                actionStyle: TextStyle(color: Colors.green),
                animationDuration: Duration(milliseconds: 1000),
                autoDismiss: true,
              ).show(context);
            },
          ),
        ],
      ),
    );
  }
}
