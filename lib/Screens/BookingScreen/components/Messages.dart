import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/BookingScreen/components/ChatScreen.dart';

class MessagesSection extends StatefulWidget {
  const MessagesSection({super.key});

  @override
  State<MessagesSection> createState() => _MessagesSectionState();
}

class _MessagesSectionState extends State<MessagesSection> {
  List<Map<String, dynamic>> chatdata = [
    {
      'name': 'John Smith',
      'job': 'CEO at XYX Company',
      'image': Image.asset('assets/Images/boygreen.png')
    },
    {
      'name': 'Rita Lancaster',
      'job': 'CEO at ABX Company',
      'image': Image.asset('assets/Images/girlgreen.png')
    },
    {
      'name': 'Piya Mitra',
      'job': 'CEO at MND Company',
      'image': Image.asset('assets/Images/girlblue.png')
    },
  ];
  final Image image = Image.asset('assets/Images/My project.png');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ListTile(
                title: Text(
                  chatdata[index]['name'],
                ),
                subtitle: Text(
                  chatdata[index]['job'],
                ),
                leading: CircleAvatar(
                  foregroundImage: chatdata[index]['image'].image,
                  backgroundColor: Colors.blue[100],
                  radius: 35,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
