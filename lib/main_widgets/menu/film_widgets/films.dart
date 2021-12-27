import 'package:flutter/material.dart';

//Класс для создания фильмов
class Movie {
  final String title;
  final String inmageName;
  final String time;
  final String descreaption;

  const Movie({
    required this.title,
    required this.inmageName,
    required this.time,
    required this.descreaption,
  });
}

//Список который отображается
List<Movie> listMovie = [];
//Список который не отображается
List<Movie> listMovieForSerch = [
  const Movie(
      title: 'Platform',
      inmageName: 'images/Platform.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  const Movie(
      title: 'Loft',
      inmageName: 'images/Loft.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  const Movie(
      title: 'Finch',
      inmageName: 'images/Finch.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
  const Movie(
      title: 'Kill Bill',
      inmageName: 'images/image.jpeg',
      time: '04.12.2021',
      descreaption:
          'descreaptionfsafdsaffsdhfhsadkjfhaslkjdhfjkasdhfkjshadlfhsadlfhsak'),
];

//Виджет для вкладки Фильмы
class Films extends StatefulWidget {
  Films({Key? key}) : super(key: key);

  @override
  State<Films> createState() => _FilmsState();
}

class _FilmsState extends State<Films> {
  final controllerOne = TextEditingController();
  void setStateForSerch() {
    if (controllerOne.text.isNotEmpty) {
      listMovie = listMovieForSerch.where((Movie movie) {
        return movie.title
            .toLowerCase()
            .contains(controllerOne.text.toLowerCase());
      }).toList();
    } else {
      listMovie = listMovieForSerch;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    setStateForSerch();
    controllerOne.addListener(setStateForSerch);
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Stack(
      children: [
        ListView.builder(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: listMovie.length,
            itemExtent: 180,
            itemBuilder: (BuildContext context, int index) {
              final movie = listMovie[index];
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
                          Image(
                            image: AssetImage(movie.inmageName),
                            width: 150,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  movie.time,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  movie.descreaption,
                                  maxLines: 3,
                                  overflow: TextOverflow.fade,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      color: Colors.transparent,
                    )
                  ],
                ),
              );
            }),
        SerchWidget(
          controllerOne: controllerOne,
        ),
      ],
    );
  }
}

//Виджет для поиска сверху в стеке
class SerchWidget extends StatefulWidget {
  const SerchWidget({
    required this.controllerOne,
    Key? key,
  }) : super(key: key);
  final TextEditingController controllerOne;
  @override
  State<SerchWidget> createState() => _SerchWidgetState();
}

class _SerchWidgetState extends State<SerchWidget> {
  final backgroundColorForSerch = Colors.transparent;
  bool enebleForSerch = false;
  Color? forSerching = null;
  String? hintText = null;
  Row? forLable;
//Функция для отображения Поиска
  void _onTabFAB() {
    setState(() {
      enebleForSerch == false ? enebleForSerch = true : enebleForSerch = false;
      forSerching == Colors.black87
          ? forSerching = Colors.transparent
          : forSerching = Colors.black87;

      hintText == null ? hintText = 'Serch' : hintText = null;
      forLable == null
          ? forLable = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.search),
                Text(
                  'Serch',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          : forLable = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: forSerching,
          ),
          child: TextField(
            controller: widget.controllerOne,
            textAlign: TextAlign.center,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              enabled: enebleForSerch,
              label: forLable,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.white)),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(3),
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: _onTabFAB,
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            backgroundColor: Colors.indigo,
          ),
        ),
      ],
    );
  }
}
