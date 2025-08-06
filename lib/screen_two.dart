import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Navigation Drawer"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // ✅ CircleAvatar at the top
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
                ),
              ),
              const CircleAvatar(
                radius: 18,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ✅ Expanded ListView like WhatsApp chat list
          Expanded(
            child: ListView.builder(
              itemCount: 20, // You can increase this to simulate many chats
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: Text('Chat $index'),
                  subtitle: const Text('Last message preview...'),
                  onTap: () {
                    Navigator.pop(context); // Or navigate anywhere
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
