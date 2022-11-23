import 'package:flutter/material.dart';

class ListTeachers extends StatefulWidget {
  const ListTeachers({Key? key}) : super(key: key);

  @override
  State<ListTeachers> createState() => _ListTeachersState();
}

class _ListTeachersState extends State<ListTeachers> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Teacher"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 10, //players.length
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children:  [
              ListTile(
                // tileColor: Colors.green[colorCodes[index]],
                // leading: Image.asset(players[index].image,height: 200,width: 50,),
                title: Text("Name"),//Text(players[index].name,),
                subtitle:Text("Designation"),// Text(players[index].description),
                textColor: Colors.black,
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => DetailScreen(player: players[index]),
                  //   ),
                  // );
                },

//                 trailing: Wrap(
//                     spacing: 12, // space between two icons
//                     children: <Widget>[
//                       Icon(Icons.call), // icon-1
//                 Icon(Icons.message),
//
// ];
                //dense: true,
              ),
              Divider(),

            ],
          );
        },
      ),
    );
  }
}
