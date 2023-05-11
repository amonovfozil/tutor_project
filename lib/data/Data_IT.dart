// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, duplicate_ignore

class cours {
  final String id;
  final String img;
  final String title;
  final String teachername;
  final String teacherImg;
  final double Views;
  final double amount_Like;
  final double price;
  cours({
    required this.id,
    required this.img,
    required this.title,
    required this.teachername,
    required this.teacherImg,
    required this.Views,
    required this.amount_Like,
    required this.price,
  });
}

class coursLists {
  List<cours> courses = [
    cours(
        id: 'c1',
        img: 'assets/images/fon.png',
        title: 'UI/UX DESIGN',
        teachername: 'Рафаэль Ройтман',
        teacherImg: 'assets/images/avatar.png',
        Views: 189,
        amount_Like: 5.5,
        price: 10),
    cours(
        id: 'c1',
        img: 'assets/images/fon.png',
        title: 'UI/UX DESIGN',
        teachername: 'Aмонов Фозил',
        teacherImg: 'assets/images/avatar.png',
        Views: 189,
        amount_Like: 5.5,
        price: 10),
    cours(
        id: 'c1',
        img: 'assets/images/fon.png',
        title: 'UI/UX DESIGN',
        teachername: 'Рафаэль Ройтман',
        teacherImg: 'assets/images/avatar.png',
        Views: 189,
        amount_Like: 5.5,
        price: 10),
    cours(
        id: 'c1',
        img: 'assets/images/fon.png',
        title: 'UI/UX DESIGN',
        teachername: 'Рафаэль Ройтман',
        teacherImg: 'assets/images/avatar.png',
        Views: 189,
        amount_Like: 5.5,
        price: 10),
  ];
}
