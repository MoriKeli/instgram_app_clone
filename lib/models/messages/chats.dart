class Chats {
  final String message;
  final String dateStamp;
  final bool isSender;

  Chats({
    required this.dateStamp,
    required this.message,
    this.isSender = false,
  });
}

List<Chats> chatMessages = [
  Chats(
    dateStamp: 'Dec 8, 2024 18:40',
    message: 'Hi 👋🏾',
  ),
  Chats(
    dateStamp: 'Dec 8, 2024 18:45',
    message: 'Hi brenda. How are you?',
    isSender: true,
  ),
  Chats(
    dateStamp: 'Dec 8, 2024 18:46',
    message: "I'm exhausted! I had a very hectic day.",
  ),
  Chats(
    dateStamp: 'Dec 8, 2024 18:50',
    message: 'Sorry to hear that. What were you working on?',
    isSender: true,
  ),
];
