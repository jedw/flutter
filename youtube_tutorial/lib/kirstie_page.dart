import 'package:flutter/material.dart';

class KirstiePage extends StatefulWidget {
  const KirstiePage({Key? key}) : super(key: key);

  @override
  State<KirstiePage> createState() => _KirstiePage();
}

class _KirstiePage extends State<KirstiePage> {
  bool isSwitch = false;
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kirstie'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/kirstie.jpg'),
            const SizedBox(
              height: 10.00,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.00),
              padding: const EdgeInsets.all(10.00),
              color: Colors.pinkAccent,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'I <3 Kirstie!! ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.pink),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheck = newBool;
                });
              },
            ),
            Image.network(
                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2012/12/11/11/Kirsty%20Allsop%20re-zise_1.jpg?quality=75&width=990&auto=webp&crop=982:726,smart'),
          ],
        ),
      ),
    );
  }
}
