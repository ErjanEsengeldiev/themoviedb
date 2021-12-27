import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/main_widgets/menu/home_widgets/home.dart';

class LikeContainer extends StatefulWidget {
  const LikeContainer({Key? key}) : super(key: key);

  @override
  State<LikeContainer> createState() => _LikeContainerState();
}

class _LikeContainerState extends State<LikeContainer> {
  Color colorFillLike = Colors.transparent;
  Color arowColor = Colors.lightGreen;
  @override
  Widget build(BuildContext context) {
    final listNews =
        context.findAncestorStateOfType<HomeState>()?.listNews ?? [];
    final index =
        context.findAncestorStateOfType<HomeState>()?.indexFromBuil ?? 0;

    return Container(
      width: MediaQuery.of(context).size.width / 7,
      decoration: BoxDecoration(
        color: colorFillLike,
        border: Border.all(color: Colors.lightGreen),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_upward,
              color: arowColor,
            ),
            Text('${listNews[index].like}')
          ],
        ),
        onTap: () {
          setState(() {
            listNews[index].userLiked == false
                ? listNews[index].like++
                : listNews[index].like--;
            listNews[index].userLiked == false
                ? listNews[index].userLiked = true
                : listNews[index].userLiked = false;
            listNews[index].userLiked == true
                ? colorFillLike = Colors.lightGreen
                : colorFillLike = Colors.transparent;
            listNews[index].userLiked == true
                ? arowColor = Colors.black
                : arowColor = Colors.lightGreen;
          });
        },
      ),
    );
  }
}

class DizLikeContainer extends StatefulWidget {
  const DizLikeContainer({Key? key}) : super(key: key);

  @override
  _DizLikeContainerState createState() => _DizLikeContainerState();
}

class _DizLikeContainerState extends State<DizLikeContainer> {
  Color colorFillDizLike = Colors.transparent;
  Color arowColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    final listNews =
        context.findAncestorStateOfType<HomeState>()?.listNews ?? [];
    final index =
        context.findAncestorStateOfType<HomeState>()?.indexFromBuil ?? 0;

    return Container(
      width: MediaQuery.of(context).size.width / 7,
      decoration: BoxDecoration(
        color: colorFillDizLike,
        border: Border.all(color: Colors.red),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_downward,
              color: arowColor,
            ),
            Text('${listNews[index].dizLike}')
          ],
        ),
        onTap: () {
          setState(() {
            listNews[index].userDizLiked == false
                ? listNews[index].dizLike++
                : listNews[index].dizLike--;
            listNews[index].userDizLiked == false
                ? listNews[index].userDizLiked = true
                : listNews[index].userDizLiked = false;
            listNews[index].userDizLiked == true
                ? colorFillDizLike = Colors.red
                : colorFillDizLike = Colors.transparent;
            listNews[index].userDizLiked == true
                ? arowColor = Colors.black
                : arowColor = Colors.red;
          });
        },
      ),
    );
  }
}
