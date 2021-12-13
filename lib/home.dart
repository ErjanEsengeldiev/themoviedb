import 'package:flutter/material.dart';

//Класс для создания новостей
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

//Сипсок новостей
final List<News> listNews = [
  const News(
      title: 'Mulan Soon',
      inmageName: 'images/Mulan.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsddescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdhfjkasdhfkdescreaptionfsafdsaffsddescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdhfjkasdhfkjshadlfhsadlfhsakjshadlfhsadlfhsak'),
  const News(
      title: 'About Scarlet and Tors Relationship',
      inmageName: 'images/Avabgers.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  const News(
      title: 'Titanik',
      inmageName: 'images/FilmNews.jpeg',
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

//Виджет для отображения вкалдки Главная "Home"
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? indexFromBuil;
  //Для Подсчета лайков
  int likeCount = 0;
  //что бы знать лкнул ли юсер
  bool userLiked = false;
  //Функция Для увелечение лайков
  void likeNews() {
    setState(() {
      userLiked == false ? likeCount++ : likeCount--;
      userLiked == false ? userLiked = true : userLiked = false;
    });
  }

//Для Подсчета Дизлайков
  int dizLikeCount = 0;
  //что бы знать лкнул ли юсер
  bool userDizLiked = false;
  //Функция Для увелечение лайков
  void dizLikeNews() {
    setState(() {
      userDizLiked == false ? dizLikeCount++ : dizLikeCount--;
      userDizLiked == false ? userDizLiked = true : userDizLiked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            itemCount: listNews.length,
            itemExtent: 500,
            itemBuilder: (BuildContext context, int index) {
              final news = listNews[index];
              //Для чтения новостей
              void viewNews() {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ViewNewsWidget(indexFromlist: index)));
                });
              }

              //Inkwell для лайков
              var inkWellForLike = InkWell(
                onTap: likeNews,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.lightGreen,
                    ),
                    Text('${likeCount.toString()}'),
                  ],
                ),
              );
              //Inkwell для дизлайков
              var inkWellForDizlike = InkWell(
                onTap: dizLikeNews,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                    Text('${dizLikeCount.toString()}'),
                  ],
                ),
              );
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                child: Stack(
                  children: [
                    //Content Container
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
                      //Content
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //Заглавное Фото
                          Image(image: AssetImage(news.inmageName)),
                          Center(
                            //Заголовок для статьи
                            child: Text(
                              news.title,
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          //Colimn для Описании, лайков, дизлайков,времени
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Статья
                                Text(
                                  news.descreaption,
                                  maxLines: 3,
                                  overflow: TextOverflow.fade,
                                ),
                                SizedBox(
                                  height: 10,
                                ),

                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        //like
                                        inkWellForLike,
                                        //dizLike
                                        inkWellForDizlike,
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    //Дата публикации
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Следующий слой для анимации и перехода ка статье
                    Material(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: InkWell(
                          onTap: viewNews,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
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

//Виджет для отображения вкалдок В Главном
class ViewNewsWidget extends StatelessWidget {
  final int indexFromlist;
  const ViewNewsWidget({Key? key, required this.indexFromlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          listNews[indexFromlist].title,
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
              Container(
                child: Image(
                  image: AssetImage(listNews[indexFromlist].inmageName),
                ),
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

                        //Дата
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
