import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _showMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Meu Perfil'),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          child: Icon(
                            Icons.person,
                            size: 110,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Gabriel William Cardozo',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '(47) 4007-4321',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Estudante de Análise e Desenvolvimento de Sistemas (3º semestre)\n Instituto SENAI de Jaraguá do Sul.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Buscando oportunidade para ingressar na área de tecnologia\n Atualmente trabalho como programador de dobra CNC na Baumann',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Experiência básica com:',
                          style: TextStyle(fontSize: 16),),
                          const SizedBox(height: 8),
                          const Text(
                            '\n•Java      •JavaScript i(ntegração com APIs) \n•Python     •Spring Boot      •Flutter',
                            textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                          ),
                        const SizedBox(height: 16),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showMore = !_showMore;
                            });
                          },
                          child: Text(_showMore ? 'Ver menos' : 'Ver mais'),
                        ),

                        if (_showMore)
                          Column(
                            children: [
                              const SizedBox(height: 50),
                              const Divider(),
                              const SizedBox(height: 50),
                              const Text(
                                'Mais Informações:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "• Conhecimento em Python, Java (Spring Boot), MySQL e integração com API's\n"
                                '• Curso de SolidWorks\n'
                                '• Inglês Básico\n'
                                '• Familiaridade com boas práticas de programação e versionamento GIT\n'
                                '• Interesse em atuar com desenvolvimento web (Full-Stack)\n'
                                '• Em transição de carreira para área de tecnologia',
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.email),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.link),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.phone),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
