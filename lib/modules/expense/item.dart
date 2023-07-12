// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  int id;
  String name;
  String description;
  double price;
  String imagePath;
  int categoryId;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.categoryId,
  });
}
