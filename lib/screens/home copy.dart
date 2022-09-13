import 'package:demo_flutter/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body color
      // backgroundColor: Colors.pink,
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        // child: const Text('This is home screen'),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            // widget1
            searchBox(),
            // Widget 2
            Expanded(
              child: ListView(
                children: [
                  // Widget 3
                  ListItemHeadTitle(),
                  // Todo Item Widget

                  // const ToDoItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// App headerbar
AppBar _buildAppBar() {
  return AppBar(
    // title: const Text('ToDo App'),
    backgroundColor: tdBGColor,
    // header bottom shadow
    elevation: 2,
    title: Row(
      // the image is right side
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/avatar.jpeg'),
          ),
        ),
      ],
    ),
  );
}

// Searchbox
Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    // margin: const EdgeInsets.only(top: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: tdBlack,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: tdGrey,
        ),
      ),
    ),
  );
}

Widget ListItemHeadTitle() {
  return Container(
    margin: const EdgeInsets.only(
      top: 50,
      bottom: 20,
    ),
    child: const Text(
      'All Todos',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
