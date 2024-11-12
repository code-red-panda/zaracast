String formatDuration(int seconds) {
  final minutes = seconds ~/ 60;

  if (minutes < 60) {
    return '${minutes}m';
  } else {
    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;

    if (remainingMinutes == 0) {
      return '${hours}h';
    } else {
      return '${hours}h ${remainingMinutes}m';
    }
  }
}
