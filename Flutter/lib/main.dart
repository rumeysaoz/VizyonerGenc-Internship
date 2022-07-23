import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    debugPrint('build edildi');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vizyoner Genç',
      // ThemeData(primarySwatch: Colors.red)
      theme: ThemeData.dark(),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Text('Vizyoner Genç'),
              ),
              ListTile(
                title: const Text('Anasayfa'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Hakkımızda'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('İletişim'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Center(child: Text('Vizyoner Genç')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text("${controller.variable.value}"),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.white70,
              onPressed: () {
                controller.fetchData();
              },
              child: const Text("Fetch"),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.white70,
              onPressed: () {
                controller.incerement();
                // controller.streamController.sink.add(++controller.variable);
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class Controller {
  final variable = 0.obs;
  fetchData() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    debugPrint('response: ${response.data}');
  }

  incerement() {
    variable.value++;
  }
  // StreamController streamController = StreamController();
}

//  StreamBuilder(
//                   stream: controller.streamController.stream,
//                   builder: (context, snapshot) {
//                     return snapshot.hasData
//                         ? Text(
//                             "${snapshot.data}",
//                             style: const TextStyle(fontSize: 36),
//                           )
//                         : const Text(
//                             '0',
//                             style: TextStyle(fontSize: 36),
//                           );
//                   })
