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
              label:const Text("02"),
              backgroundColor: Colors.deepPurple,
              largeSize: 20,
              textStyle:const TextStyle(fontSize: 15),
              child: IconButton(
                color: Colors.blue,
                onPressed: () {},
                icon:const Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
            ),
            Badge(
              label:const Text("02"),
              backgroundColor: Colors.deepPurple,
              largeSize: 20,
              textStyle:const TextStyle(fontSize: 15),
              child: ElevatedButton(
                child:const Text("My Button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          const  Badge(
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
                label:const Text("02"),
                backgroundColor: Colors.deepPurple,
                largeSize: 20,
                textStyle:const TextStyle(fontSize: 15),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:const EdgeInsets.all(20),
                    child:const Row(
                      children: [Icon(Icons.add), Text("Add New Button")],
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
