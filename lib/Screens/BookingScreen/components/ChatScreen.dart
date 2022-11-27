import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Messages.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  final Image image1 = Image.asset('assets/Images/boygreen.png');
  final Image image = Image.asset('assets/Images/My project.png');
  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'id',
      text: message.text,
    );

    _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // FloatingActionButton.extended(
              //   backgroundColor: Colors.blue[200],
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => MessagesSection()));
              //   },
              //   label: const Icon(
              //     Icons.arrow_back,
              //     color: Colors.black,
              //   ),
              // ),
              Container(
                height: 620,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(15)),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          foregroundImage: image1.image,
                          backgroundColor: Colors.blue[100],
                          radius: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Smith',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'CEO at XYX Company',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 11,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          foregroundImage: image.image,
                          backgroundColor: Colors.blue[100],
                          radius: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rishi Singh',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'CXO at XYZ Company',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 11,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton.extended(
                            heroTag: 'letsMatch1',
                            backgroundColor: Colors.blue[200],
                            onPressed: () {},
                            label: Text(
                              'Let\'s Match',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FloatingActionButton.extended(
                            heroTag: 'letsMatch2',
                            backgroundColor: Colors.blue[200],
                            onPressed: () {},
                            label: Text(
                              'Let\'s Match',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 337,
                      height: 450,
                      child: Chat(
                        messages: _messages,
                        onSendPressed: _handleSendPressed,
                        user: _user,
                        theme: DefaultChatTheme(
                            inputBackgroundColor:
                                Color.fromRGBO(100, 181, 246, 1),
                            inputBorderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
