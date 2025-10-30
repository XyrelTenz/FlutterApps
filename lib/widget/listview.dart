import "package:flutter/material.dart";
import "package:flutter_apps/components/cards.dart";
import "package:flutter_apps/components/profile.dart";

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List lists = ["Card 1", "Card 2", "Card 3", "Card 4", "Card 5"];
    final List profileList = [
      "Profile 1",
      "Profile 2",
      "Profile 3",
      "Profile 4",
      "Profile 5",
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: profileList.length,
                itemBuilder: (context, index) {
                  return Profile(profiles: profileList[index]);
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: lists.length,
                itemBuilder: (context, index) {
                  return Cards(cards: lists[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
