import 'package:flutter/material.dart';
import 'package:flutterbasic/auth/login_screen.dart';
import 'package:flutterbasic/button_screen.dart';
import 'package:flutterbasic/cardview_screen.dart';
import 'package:flutterbasic/column_screen.dart';
import 'package:flutterbasic/custom_scroll_view_screen.dart';
import 'package:flutterbasic/dinamis_listview_screen.dart';
import 'package:flutterbasic/expended_screen.dart';
import 'package:flutterbasic/first_screen.dart';
import 'package:flutterbasic/font_screen.dart';
import 'package:flutterbasic/grid_screen.dart';
import 'package:flutterbasic/image_screen.dart';
import 'package:flutterbasic/list_builder.dart';
import 'package:flutterbasic/list_separated.dart';
import 'package:flutterbasic/list_view.dart';
import 'package:flutterbasic/listbuilder.dart';
import 'package:flutterbasic/listseparated.dart';
import 'package:flutterbasic/row_screen.dart';
import 'package:flutterbasic/splash_screen.dart';
import 'package:flutterbasic/textfield_screen.dart';

void main() {
  runApp(const MyApp());
}
//class MyApp mengextends ( turunan ) StatelessWidget
//sehingga MyApp akan memiliki sifat sifat yang dimiliki
//oleh StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});
//StetelessWidget bersifat statis
  //build akan dipanggil ketika aplikasi dijalannya
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //contohya title dan theme disini dia bersifat
      //karena komponen komponen didalamnya tidak akan berubah
      //Title merupakan nama aplikasi yang ditampilkan pada AppBar di bagian atas aplikasi
      title: 'Flutter Demo',
      //Tema aplikasi yang digunakan untuk mengatur warna,font, dan tata letak widget
      //Kita dapat menyesuaikan tema default Flutter atau membuat tema custom sendiri.
      theme: ThemeData(
          //primarySwatch fungsi bawaan theme untuk memberi warna di custom aplikasi
          primarySwatch: Colors.green),
      //debugShowCheckedModeBanner merupakan pilihan yang menentukan apakah label "debug" ditampilkan pada
      //banner yang menunjukkan bahwa aplikasi sedang dalam mode debug.
      //karena default nya true, maka kita akan ubah jadi false untuk menghilangkan label debug.
      debugShowCheckedModeBanner: false,
      //Home merupakan Widget utama yang digunakan untuk menampilkan tampilan awal dari aplikasi flutter.
      // home: RowSreen(),

      //initialroute merupakan rute awal yang ditampilkan ketika aplikasi pertama kali dijalankan
      //ketika menggunakan initialroute dan route maka Kita tidak perlu menggunakan // home: RowSreen(), lagi.
      //karena semua route awal yang tampilan akan mengikuti initialRoute dan routes
      //contoh dibawah ini yang akan ditampilkan adalah CustomScrollViewScreen().
      initialRoute: '/listview',
      //daftar rute atau halaman yang digunakan dalam aplikasi, yang dapat diakses
      //melalui tombol navigasi, hyperlink, dll
      routes: {
        '/': (context) => const MyHomePage(title: "Home"),
        '/column': (context) => const ColumnScreen(),
        '/row': (context) => const RowSreen(),
        '/image': (context) => const ImageScreen(),
        '/field': (context) => const FieldScreen(),
        '/button': (context) => const ButtonScreen(),
        '/font': (context) => const FontScreen(),
        '/listview': (context) => const ListScreen(),
        '/dinamislistview': (context) => const DinamisListScreen(),
        '/listbuilder': (context) => const ListBuilderScreen(),
        '/listseparated': (context) => const ListSeparatedScreen(),
        '/firstscreen': (context) => const FirstScreen(),
        '/customscrollview': (context) => const CustomScrollViewScreen(),
        '/gridscreen': (context) => const GridScreen(),
        '/listbuilderview': (context) => const ListViewBuilderScreen(),
        '/listseparatedview': (context) => const ListViewSeparatedScreen(),
        '/expended': (context) => const ExpendedScreen(),
        '/cardview': (context) => const CardViewScreen(),
        '/splashscreen': (context) => const SplashScreen(),
        '/login_screen': (context) => const LoginScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Title"),
        leading: const Text("kIRI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
