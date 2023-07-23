class CampaignBanner {
  String? id;
  String? collectionId;
  String? categoryId;
  String? thumbnail;

  CampaignBanner({
    required this.id,
    required this.collectionId,
    required this.categoryId,
    required this.thumbnail,
  });

  factory CampaignBanner.fromMapJson(Map<String, dynamic> jsonObject) {
    return CampaignBanner(
      id: jsonObject['id'],
      collectionId: jsonObject['collectionId'],
      categoryId: jsonObject['categoryId'],
      thumbnail:
          'http://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
    );
  }
}
