import '../models/category.dart';
import '../models/transaction.dart';

class WalletService {
  final List<Transaction> _transactions = [];
  final int _nextId = 1;

  // 4
  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
  }

  // 5
  List<Transaction> getAllTransactions() {
    // return [..._transactions];
    return List.unmodifiable(_transactions);
  }

  // 6
  double getBalance() {
    double incomes = 0;
    double expenses = 0;
    double total = 0;

    for (var transaction in _transactions) {
      incomes = incomes + transaction.amount;
      expenses = incomes - transaction.amount;
      total = incomes - expenses;
    }
    return total;
  }

  // 7
  bool deleteTransaction(String id) {
    int lengthBefore = _transactions.length;
    _transactions.removeWhere((transaction) => transaction.id == id);
    return _transactions.length < lengthBefore;
  }

  WalletService();

  // 8
  List<Transaction> getTransactionsByType(TransactionType type) {
    List<Transaction> newList = _transactions
        .where((transaction) => transaction.type == type)
        .toList();

    return newList;
  }

  // 9
}
