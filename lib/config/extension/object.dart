extension ObjectExtension on Object? {
  dynamic value() {
    if (this != null) return this;

    switch (this) {
      case int:
        return 0;
      case double:
        return 0.0;
      case bool:
        return false;
      default:
        return '';
    }
  }
}
