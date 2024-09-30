class ProductModel {
  const ProductModel(
      this.id,
      this.title,
      this.subtitle,
      this.imageUri,
      this.cost,
      );

  final int? id;
  final String title;
  final String subtitle;
  final String imageUri;
  final double cost;
}