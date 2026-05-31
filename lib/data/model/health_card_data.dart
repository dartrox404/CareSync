class HealthCardData {
  final String image, category, totalprice, monthlyprice, name;

  HealthCardData({
    required this.image,
    required this.category,
    required this.totalprice,
    required this.monthlyprice,
    required this.name,
  });
}

List<HealthCardData> healthcardlist = [
  HealthCardData(
    image: "assets/images/health1.png",
    category: "Premium",
    totalprice: "\$20K",
    monthlyprice: "\$1.8K/month",
    name: "Health Individual Insurance",
  ),
  HealthCardData(
    image: "assets/images/health2.png",
    category: "Gold",
    totalprice: "\$35K",
    monthlyprice: "\$2.5K/month",
    name: "Family Health Protection",
  ),
  HealthCardData(
    image: "assets/images/health3.png",
    category: "Silver",
    totalprice: "\$15K",
    monthlyprice: "\$1.2K/month",
    name: "Basic Medical Coverage",
  ),
  HealthCardData(
    image: "assets/images/health4.png",
    category: "Premium",
    totalprice: "\$50K",
    monthlyprice: "\$3.9K/month",
    name: "Comprehensive Health Plan",
  ),
  HealthCardData(
    image: "assets/images/health5.png",
    category: "Standard",
    totalprice: "\$12K",
    monthlyprice: "\$950/month",
    name: "Essential Care Insurance",
  ),
  HealthCardData(
    image: "assets/images/health6.png",
    category: "Gold",
    totalprice: "\$40K",
    monthlyprice: "\$2.9K/month",
    name: "Senior Citizen Health Plan",
  ),
  HealthCardData(
    image: "assets/images/health7.png",
    category: "Premium",
    totalprice: "\$60K",
    monthlyprice: "\$4.5K/month",
    name: "Global Medical Insurance",
  ),
];
