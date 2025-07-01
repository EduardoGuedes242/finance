String formatDate(String date) {
  final parts = date.split('/');
  if (parts.length != 3) return '';
  final day = parts[0].padLeft(2, '0');
  final month = parts[1].padLeft(2, '0');
  final year = parts[2];
  return '$year-$month-$day';
}
