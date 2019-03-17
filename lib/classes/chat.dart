class Chat {
  final String key;
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  Chat({this.key, this.name, this.message, this.time, this.avatarUrl});

  static List<Chat> generatedData = List<Chat>.generate(
    100,
    (i) => Chat(
        key: '$i',
        name: 'Chat $i',
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650",
        message: List<String>.generate(40, (j) => '$i$j').join(""),
        time: DateTime.now().subtract(new Duration(minutes: i)).toString()),
  );

  static List<Chat> dummyData = [
    new Chat(
        key: '1',
        name: "John",
        message: "Yo wassup?",
        time: "15:30",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650"),
    new Chat(
        key: '2',
        name: "Darth",
        message: "Yass n u?",
        time: "15:31",
        avatarUrl:
            "https://boygeniusreport.files.wordpress.com/2015/08/darth-vader.jpg?quality=98&strip=all&w=782"),
    new Chat(
        key: '3',
        name: "John",
        message: "Good!",
        time: "15:35",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650"),
    new Chat(
        key: '4',
        name: "Darth",
        message: "Yep!",
        time: "15:40",
        avatarUrl:
            "https://boygeniusreport.files.wordpress.com/2015/08/darth-vader.jpg?quality=98&strip=all&w=782"),
    new Chat(
        key: '5',
        name: "John",
        message: "Yo wassup?",
        time: "15:30",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650"),
    new Chat(
        key: '6',
        name: "John",
        message: "Yo wassup?",
        time: "15:30",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650"),
    new Chat(
        key: '7',
        name: "John",
        message: "Yo wassup?",
        time: "15:30",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650"),
    new Chat(
        key: '8',
        name: "John",
        message: "Yo wassup?",
        time: "15:30",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650"),
    new Chat(
        key: '9',
        name: "John",
        message: "Yo wassup?",
        time: "15:30",
        avatarUrl:
            "https://cdn.newsapi.com.au/image/v1/a05ca9a5cf5c07e37e3ecfef9b6a8ddc?width=650")
  ];
}
