// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp',style: TextStyle(color: Colors.white70),),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
              indicatorColor: Colors.teal,
              indicator: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
            
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt,color: Colors.white70,),
                ),
                Tab(
                  child: Text('Chats',style: TextStyle(color: Colors.white70),),
                ),
                Tab(
                  child: Text('Status',style: TextStyle(color: Colors.white70),),
                ),
                Tab(
                  child: Text('Call Logs',style: TextStyle(color: Colors.white70),),
                )
              ]),
              actions: [

                const Icon(Icons.search,color: Colors.white70,),
                const SizedBox(width: 10,),
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined,color: Colors.white70,),
                  itemBuilder: (context) => [
                     const PopupMenuItem(child:  Text('New Group'), value: 1,),
                     const PopupMenuItem(child:  Text('Settings'), value: 2,),
                     const PopupMenuItem(child:  Text('Log Out'), value: 3,),
                     ]
                ),
               const SizedBox(width: 10,),
              ],
             
        ),
        body: TabBarView(children: [
          const Center(child: Text('Camera')),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://tse1.mm.bing.net/th?id=OIP.CfzrYFNhpKnLfG0gcoWkeQHaE8&pid=Api'),
              ),
              subtitle: Text('Where are you now?'),
              title: Text('Abu Huraira'),
              trailing: Text('6:43 pm'),
            ),
          ),
           ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => ListTile(
              leading: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 3),shape: BoxShape.circle),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://tse1.mm.bing.net/th?id=OIP.CfzrYFNhpKnLfG0gcoWkeQHaE8&pid=Api'),
                ),
              ),
              subtitle: const Text('29 min ago'),
              title: const Text('Abu Huraira'),
              
            ),
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://tse1.mm.bing.net/th?id=OIP.CfzrYFNhpKnLfG0gcoWkeQHaE8&pid=Api'),
              ),
              subtitle: Text('You missed a call'),
              title: Text('Abu Huraira'),
              trailing: Icon(Icons.call),
            ),
          ),
        ]),
      ),
    );
  }
}
