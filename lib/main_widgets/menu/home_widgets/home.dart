import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/colors/colors.dart';
import 'package:flutter_application_youtube/main_widgets/menu/home_widgets/like_dizlike.dart';
import 'package:flutter_application_youtube/main_widgets/menu/home_widgets/view_news-widget.dart';

//Класс для создания новостей
class News {
  bool userDizLiked;
  bool userLiked;
  int dizLike;
  int like;
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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  //Сипсок новостей
  List<News> listNews = [
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
  int? indexFromBuil;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listNews.length,
      itemBuilder: (BuildContext context, int index) {
        final news = listNews[index];

        //Для чтения новостей
        void viewNews() {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewNewsWidget(
                          indexFromlist: index,
                          listViewNews: listNews,
                        )));
          });
        }

        return Container(
          color: ColorsForApp.black,
          child: Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: viewNews,
                  child: Column(
                    children: [
                      //ImgeForNews
                      Image(
                        image: AssetImage(news.inmageName),
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 30),
                      Center(
                        //Заголовок для статьи
                        child: Text(
                          news.title,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //Column для Описании,
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, right: 20, left: 20, top: 13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Статья
                            Text(
                              news.descreaption,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
        
                            Row(
                              children: [
                                Text(
                                  'Read more',
                                  style: TextStyle(color: ColorsForApp.grey),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: ColorsForApp.grey,
                                )
                              ],
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
        
                //For like,Dizlike
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, right: 18, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      LikeContainer(),
                      SizedBox(
                        width: 10,
                      ),
                      DizLikeContainer(),
                    ],
                  ),
                ),
              ],
            );
          }),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
