import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  usePathUrlStrategy();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coder Camp - Home',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, webOnlyWindowName: '_self')) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            Image.asset(
              'assets/images/coder-camp-header.png',
              height: 150,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          repeat: ImageRepeat.repeat,
                          //alignment: Alignment(-.2, 0),
                          image: AssetImage('assets/images/parchment.jpeg'),
                        ),
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'An emerging site for information and learning resources for developers, especially related to Flutter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  _launchUrl('mailto:bruce@coder.camp');
                                },
                                child: Text(
                                  'For more information contact bruce@coder.camp',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 20,
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {
                                _launchUrl(
                                  'https://coder.camp/fruitfulflutter',
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Presentation: Fruitful Flutter',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {
                                _launchUrl(
                                  'https://coder.camp/ale/course/codeMash23',
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'CodeMash 2023: Precompiler: Flutter Multiplatform Applications',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     _launchUrl('https://coder.camp/fruitfulflutter');
            //   },
            //   child: const Text('Presentation: Fruitful Flutter'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     _launchUrl('https://coder.camp/ale');
            //   },
            //   child: const Text('Adventure Learning Environment (ALE)'),
            // ),
          ],
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
