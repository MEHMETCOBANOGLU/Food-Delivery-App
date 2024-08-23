import 'package:flutter/material.dart';
import 'package:yugomas/components/my_drawer.dart';
import 'package:yugomas/components/my_silver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .end, // tepeden en asagi indiriyorum columun lool yazisini
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                )
                //my current location
                //25.05

                //description box
              ],
            ),
            title: Text('tittle'),
          ),
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
