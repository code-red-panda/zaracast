import 'package:intl/intl.dart';

String formatDatePublished(int epoch) {
  final date = DateTime.fromMillisecondsSinceEpoch(epoch * 1000);
  final daysAgo = DateTime.now().difference(date).inDays;

  switch (daysAgo) {
    case 0:
      return 'Today';
    case 1:
      return 'Yesterday';
    case 2:
      return '2 days ago';
    case 3:
      return '3 days ago';
    case 4:
      return '4 days ago';
    case 5:
      return '5 days ago';
    case 6:
      return '6 days ago';
    case 7:
      return '7 days ago';
    default:
      if (date.year == DateTime.now().year) {
        return DateFormat('MMM d').format(date);
      } else {
        return DateFormat('MMM y').format(date);
      }
  }
}
