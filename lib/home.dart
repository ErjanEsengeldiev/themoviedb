import 'package:flutter/material.dart';

//Класс для создания новостей
class News {
  bool userDizLiked;
  bool userLiked;
  final int dizLike;
  final int like;
  final String title;
  final String inmageName;
  final String time;
  final String descreaption;

  News({
    required this.userDizLiked,
    required this.userLiked,
    required this.like,
    required this.dizLike,
    required this.title,
    required this.inmageName,
    required this.time,
    required this.descreaption,
  });
}

//Сипсок новостей
final List<News> listNews = [
  News(
      userDizLiked: false,
      userLiked: false,
      like: 0,
      dizLike: 0,
      title: 'Mulan Soon',
      inmageName: 'images/Mulan.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsddescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdhfjkasdhfkdescreaptionfsafdsaffsddescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdescreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsakdhfjkasdhfkjshadlfhsadlfhsakjshadlfhsadlfhsak'),
  News(
      userDizLiked: false,
      userLiked: false,
      like: 0,
      dizLike: 0,
      title: 'About Scarlet and Tors Relationship',
      inmageName: 'images/Avabgers.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  News(
      userDizLiked: false,
      userLiked: false,
      like: 0,
      dizLike: 0,
      title: 'Titanik',
      inmageName: 'images/FilmNews.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  News(
      userDizLiked: false,
      userLiked: false,
      like: 0,
      dizLike: 0,
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listNews.length,
        itemExtent: 370,
        itemBuilder: (BuildContext context, int index) {
          final news = listNews[index];
          //Функция Для увелечение лайков
          likeNews(int index) {
            listNews[index].userLiked == false
                ? listNews[index].like + 1
                : listNews[index].like - 1;
            listNews[index].userLiked == false
                ? listNews[index].userLiked = true
                : listNews[index].userLiked = false;
          }

          //Функция Для увелечение лайков
          dizLikeNews(int index) {
            listNews[index].userDizLiked == false
                ? listNews[index].dizLike + 1
                : listNews[index].dizLike - 1;
            listNews[index].userDizLiked == false
                ? listNews[index].userDizLiked = true
                : listNews[index].userDizLiked = false;
          }

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
            splashColor: Colors.green,
            onTap: likeNews(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.arrow_upward,
                    color: Colors.lightGreen,
                  ),
                  Text(listNews[index].like.toString()),
                ],
              ),
            ),
          );
          //Inkwell для дизлайков
          var inkWellForDizlike = InkWell(
            splashColor: Colors.red,
            onTap: dizLikeNews(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                  ),
                  Text(listNews[index].dizLike.toString()),
                ],
              ),
            ),
          );
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
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
                          //ImgeForNews
                          Image(
                            image: AssetImage(news.inmageName),
                            width: 300,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
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
                          //Column для Описании, лайков, дизлайков,времени
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

                                const SizedBox(
                                  height: 10,
                                ),

                                //Дата публикации
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    news.time,
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Следующий слой для анимации и перехода ка статье
                    SizedBox(
                      height: 300,
                      child: Material(
                        child: InkWell(
                          onTap: viewNews,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
                //For like,Dizlike
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //like
                      inkWellForLike,
                      const SizedBox(
                        width: 10,
                      ),
                      //dizLike
                      inkWellForDizlike,
                    ],
                  ),
                ),
              ],
            ),
          );
        });
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
