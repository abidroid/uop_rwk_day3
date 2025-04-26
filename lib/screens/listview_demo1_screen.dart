
import 'package:flutter/material.dart';

class ListviewDemo1Screen extends StatelessWidget {
  const ListviewDemo1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        backgroundColor: Colors.teal,
      ),

      body: ListView(
        children: [

          Card(
            color: Colors.amber,
            child: ListTile(
              // leading: CircleAvatar(
              //   backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
              // ),
              title: Text('Babar Azam'),
              subtitle: Text('Pakistan'),
              trailing: Text('Batsman'),
              onTap: (){
                print('Babar Azam');
              },

            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
              ),
              title: Text('Virat Kohli'),
              subtitle: Text('India'),
              trailing: Text('Batsman'),
            
            ),
          ),
          Container(height: 200, color: Colors.red,),
          Icon(Icons.settings, size: 50,),
          Image(image: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4')),

        ],
      ),
    );
  }
}
