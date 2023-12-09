import 'package:flutter/material.dart';
import 'package:myapp/components/alert.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

// Bu kısımdaki userlar type safety içine alınacak

class User {
  int id;
  String name;
  String surname;
  int age;

  User({
    required this.id,
    required this.name,
    required this.surname,
    required this.age,
  });
}

class _ProfilePageState extends State<ProfilePage> {
  List<User> users = [
    User(id: 1, name: "John", surname: "Doe", age: 25),
    User(id: 2, name: "Alice", surname: "Smith", age: 19),
    User(id: 3, name: "Alen", surname: "Walker", age: 34),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcılar'),
      ),
      body: Column(
        children: [
          UserList(userlist: users),
          const Text('Kullanıcı İşlemleri'),
          const Divider(),
          Row(
            children: <Widget>[
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Center(
                  child: ElevatedButton(
                    child: const Row(
                      children: [
                        Icon(Icons.add),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Ekle'),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        users.add(
                            User(id: 4, name: "Jane", surname: "Doe", age: 25));
                      });
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Center(
                  child: ElevatedButton(
                    child: const Row(
                      children: [
                        Icon(Icons.delete),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Sil'),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        users.removeWhere((element) => element.id == 4);
                      });
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Center(
                  child: ElevatedButton(
                    child: const Row(
                      children: [
                        Icon(Icons.update),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Güncelle'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class UserList extends StatelessWidget {
  final List<User>? userlist;

  const UserList({Key? key, this.userlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: userlist!.length,
        itemBuilder: (context, index) {
          final element = userlist![index];
          return UserCard(
            title: element.name,
            message: element.surname,
            age: element.age,
          );
        },
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String title;
  final String message;
  final int age;

  const UserCard(
      {Key? key, required this.title, required this.message, required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage:
                NetworkImage('https://www.w3schools.com/howto/img_avatar.png')),
        trailing: const Icon(Icons.arrow_forward_ios),
        title: Text(title),
        subtitle: Text(message),
        onTap: () {
          showAlert(context, title, message);
        },
      ),
    );
  }
}

class UserDetail extends StatelessWidget {
  final User user;
  const UserDetail({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.surname),
        trailing: Text(user.age.toString()),
        isThreeLine: true,
        leading: const Icon(Icons.person),
      ),
    );
  }
}
