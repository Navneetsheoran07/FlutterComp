import 'package:flutter/material.dart';

class BudgetButton extends StatelessWidget {
  const BudgetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Badge(
              label: Text("02"),
              backgroundColor: Colors.deepPurple,
              largeSize: 20,
              textStyle: TextStyle(fontSize: 15),
              child: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
            ),
            Badge(
              label: Text("02"),
              backgroundColor: Colors.deepPurple,
              largeSize: 20,
              textStyle: TextStyle(fontSize: 15),
              child: ElevatedButton(
                child: Text("My Button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Badge(
              label: Text("02"),
              alignment: AlignmentDirectional.topEnd,
              backgroundColor: Colors.deepPurple,
              largeSize: 15,
              textStyle: TextStyle(fontSize: 15),
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Badge(
                label: Text("02"),
                backgroundColor: Colors.deepPurple,
                largeSize: 20,
                textStyle: TextStyle(fontSize: 15),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [Icon(Icons.add), Text("Add New Button")],
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
    ;
  }
}
