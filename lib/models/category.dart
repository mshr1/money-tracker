class Category {
  final String id;
  final String name;
  final String icon;
  @override
  toString() {
    return 'icon: $icon';
  }

  Category({required this.id, required this.name, required this.icon});
}
