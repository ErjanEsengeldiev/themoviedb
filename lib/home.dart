import 'package:flutter/material.dart';

class News {
  final String title;
  final String inmageName;
  final String time;
  final String descreaption;

  const News({
    required this.title,
    required this.inmageName,
    required this.time,
    required this.descreaption,
  });
}

final List<News> listNews = [
  const News(
      title: 'Mortl Combat',
      inmageName: 'images/image.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsddescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdhfjkasdhfkdescreaptionfsafdsaffsddescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdhfjkasdhfkjshadlfhsadlfhsakjshadlfhsadlfhsak'),
  const News(
      title: 'Mults',
      inmageName: 'images/image.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  const News(
      title: 'Titanik',
      inmageName: 'images/image.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  const News(
      title: 'Kill Bill',
      inmageName: 'images/image.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? indexFromBuil;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            itemCount: listNews.length,
            itemExtent: 200,
            itemBuilder: (BuildContext context, int index) {
              final news = listNews[index];
              void viewNews() {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewNewsWidget(
                              indexFromlist: index,
                            )),
                  );
                });
              }

              indexFromBuil = index;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            offset: Offset(2, 5),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage(news.inmageName)),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      news.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    news.descreaption,
                                    maxLines: 3,
                                    overflow: TextOverflow.fade,
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      news.time,
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: viewNews,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      color: Colors.transparent,
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}

class ViewNewsWidget extends StatelessWidget {
  final int indexFromlist;
  const ViewNewsWidget({Key? key, required this.indexFromlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text(listNews[indexFromlist].title,),
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
                image: AssetImage(listNews[indexFromlist].inmageName),
              ),
              SizedBox(
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
                          listNews[indexFromlist].descreaption,
                          overflow: TextOverflow.fade,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            listNews[indexFromlist].time,
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
