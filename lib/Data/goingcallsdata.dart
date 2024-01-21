class CallContact {
  final String name;
  final String profilePicture;

  CallContact({
    required this.name,
    required this.profilePicture,
  });
}

class GoingCallsData {
  static List<CallContact> contacts = [
    CallContact(
      name: 'Contact A',
      profilePicture:
          'assets/images/luffy.jpg',
    ),
    CallContact(
      name: 'Contact B',
      profilePicture:
          'assets/images/luffy2.jpg',
    ),
    CallContact(
      name: 'Contact C',
      profilePicture:
          'assets/images/another.jpg',
    ),
    // Add more contacts as needed
  ];
}
