import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/widget/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text('HUMMING\nBIRD .'),
        )
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent),
                child: Center(
                  child: Column(
                    children: [
                      Text(''),
                      Text('SKILL UP NOW',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      Text('TAP HERE')
                    ],
                  ),
                )
            ),
            ListTile(
              leading: Icon(Icons.ondemand_video, color: Colors.black, size: 30,),
              title: Text('Episodes', style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.perm_device_information_rounded, color: Colors.black, size: 30,),
              title: Text('About', style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
      body: ResponsiveBuilder(
        mobile: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FLUTTER WEB. THE BASIC', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              Text('In this course we will go over the basics of using Flutter web for development. '
                  'Topic will include Responsive Layout, Deplouing, Font Changes, Hover functionality, '
                  'Modals and more.', style: TextStyle(fontSize: 20))
            ],
          ),
        ),
        desktop: Container(
          child: const Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('FLUTTER WEB. THE BASIC', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                Text('In this course we will go over the basics of using Flutter web for development. '
                    'Topic  will include Responsive Layout, Deplouing, Font Changes, Hover functionality, '
                    'Modals and more.', style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: null,
                    child: Text('Join Course'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
