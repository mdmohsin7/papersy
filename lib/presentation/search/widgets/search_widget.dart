import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 380,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2.0,
                          color: Colors.grey,
                          spreadRadius: 1.0),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      // labelText: "Subject...",
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0, color: Colors.grey, spreadRadius: 1.0),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: IconButton(
                  icon: const Icon(Icons.settings_input_svideo_rounded),
                  onPressed: () {}),
            ),
          ],
        ),
        Wrap(
          alignment: WrapAlignment.spaceAround,
          direction: Axis.horizontal,
          children: List<Widget>.generate(
            9,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChoiceChip(
                label: Text('Item $index'),
                selected: index == 4 || false,
                onSelected: (bool selected) {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
