import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Phone Project',
          home: MyApp()
      )
      );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  var a = 1;
  var appName = 'THIS IS APP';
  var name = ['안수미', '안효진', '빙봉'];
  var like = [0,0,0];

  @override
  build(context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return DialogUI();
              },
          );
        },
        ),
        appBar: AppBar(title: Text(appName)),
        body: ListView.builder(
            itemCount : 3,
            itemBuilder : (c, i) {
              return ListTile(
                leading: Image.asset('profile.png'),
                title : Text(name[i]),
                subtitle: Text(like[i].toString()),
                trailing: ElevatedButton(
                  child: Icon(Icons.add_reaction_outlined),
                  onPressed: (){
                    setState(() {
                      like[i]++;
                    });
                  },
                ),
              );
    },
    ),
    bottomNavigationBar: bottomBar(),
      );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override //최우선 적용
  build(context) {
    return SizedBox(
      child:Text('안녕'),
    );
  }
}
class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);

  @override
  build(context) {
    return Row(
        children: [
        Icon(Icons.account_circle_outlined),
        Text(' 안수미'),
        ]
    );
  }
}
class bottomBar extends StatelessWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  build(context) {
    return BottomAppBar(
      child:Container(
        width: double.infinity,
        height: 40,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page)
          ],
        ),
      )
    );
  }
}
class DialogUI extends StatelessWidget {
  const DialogUI({Key? key}) : super(key: key);

  @override
  build(context) {
    return Dialog (
     child:Container(
       width: 300,
       height: 300,
       margin: EdgeInsets.all(10),
       padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
       child: Column(
         children: [
           TextField(),
           TextButton( child : Text('APPLY'), onPressed : (){}),
           TextButton(
               child : Text('취소'),
               onPressed: (){Navigator.pop(context);})
         ],
       ),
     ),
    );
  }
}






