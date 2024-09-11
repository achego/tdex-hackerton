enum NetworkHeader {
  authorization(text: 'Authorization'),
  accept(text: 'Accept');

  const NetworkHeader({required this.text});
  final String text;
}
