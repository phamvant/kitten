class Kitten {
  final String _name;
  final String _imagePath;

  Kitten({required String name, required String imagePath})
      : _name = name,
        _imagePath = imagePath;

  String get name => _name;
  String get imagePath => _imagePath;
}
