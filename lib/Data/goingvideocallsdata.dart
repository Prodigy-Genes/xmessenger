class VideoCallContact {
  final String name;
  final String profilePicture;

  VideoCallContact({
    required this.name,
    required this.profilePicture
  });
}

class GoingVideoCallsData {
  static List<VideoCallContact> contacts = [
    VideoCallContact(
      name: 'Contact A',
      profilePicture:
          'https://i.pinimg.com/564x/73/b7/f1/73b7f146a6f5d6201c3fd579aad12f66.jpg',
    ),
    VideoCallContact(
      name: 'Contact B',
      profilePicture:
          'https://i.pinimg.com/564x/72/99/14/729914ee5f05da86c8660d7c785e79a6.jpg',
    ),
    VideoCallContact(
      name: 'Contact C',
      profilePicture:
          'https://i.pinimg.com/564x/68/ea/28/68ea288e7de5c2c4aec494e6db818731.jpg',
    )
    // Add more contacts as needed
  ];
}