import 'package:drift/drift.dart';

// Penamaan tabel
@DataClassName('Transaction')

//
class Transactions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 125)();
  IntColumn get category_id => integer()();
  DateTimeColumn get transaction_date => dateTime()();
  IntColumn get amount => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}
