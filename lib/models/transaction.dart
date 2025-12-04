import 'category.dart';

enum TransactionType { income, expense }

class Transaction {
  final String id;
  final double amount;
  final TransactionType type;
  final Category category;
  final String description;
  final DateTime date;

  String get sign {
    return type == TransactionType.income ? '+' : '-';
  }

  String getInfo() {
    if (type == TransactionType.income) {
      return 'Доход: +$amount - $description (${category.name}) - date: (${date.day}/${date.month}/${date.year})';
    } else {
      return 'Расход: -$amount - $description (${category.name}) - date: (${date.day}/${date.month}/${date.year})';
    }
  }

  Transaction({
    required this.id,
    required this.amount,
    required this.type,
    required this.category,
    required this.description,
    required this.date,
  });
}
