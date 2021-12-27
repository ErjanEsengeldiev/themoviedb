import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/main_widgets/menu/home_widgets/home.dart';

//Виджет для отображения вкалдок В Главном
class ViewNewsWidget extends StatelessWidget {
  final int indexFromlist;
  final List<News> listViewNews;
  const ViewNewsWidget({
    Key? key,
    required this.indexFromlist,
    required this.listViewNews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          listViewNews[indexFromlist].title,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage(listViewNews[indexFromlist].inmageName),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listViewNews[indexFromlist].descreaption,
                          overflow: TextOverflow.fade,
                        ),

                        //Дата
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            listViewNews[indexFromlist].time,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
