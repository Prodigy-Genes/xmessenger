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
          'assets/images/luffy.jpg',
    ),
    VideoCallContact(
      name: 'Contact B',
      profilePicture:
          'assets/images/luffy2.jpg',
    ),
    VideoCallContact(
      name: 'Contact C',
      profilePicture:
          'assets/images/another.jpg',
    )
    // Add more contacts as needed
  ];
}