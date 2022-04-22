class ExpansionItem {
  bool isExpanded;
  final String header;
  final String content;
  final String? image;

  ExpansionItem(
      {this.isExpanded = false,
      required this.header,
      required this.content,
      this.image});
}
