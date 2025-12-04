import 'package:finance_tracker/models/category.dart';
import 'package:finance_tracker/models/transaction.dart';

void main() {
  List<Category> categories = [
    Category(id: 'cat1', name: 'Еда', icon: '🍔'),
    Category(id: 'cat2', name: 'Зарплата', icon: '📈'),
    Category(id: 'cat3', name: 'Транспорт', icon: '🚌'),
    Category(id: 'cat4', name: 'Развлечения', icon: '⚽'),
    Category(id: 'cat5', name: 'Жильё', icon: '🏘'),
  ];

  var transaction = Transaction(
    id: 'tr1',
    amount: 500,
    type: TransactionType.expense,
    category: categories[0],
    description: "обед в кафе",
    date: DateTime.now(),
  );

  print(transaction.getInfo());
}
