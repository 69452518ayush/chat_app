import 'package:flutter/material.dart';
import 'package:linkly/ui/screens/other/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../core/models/user_model.dart';

class ChatScreen extends StatelessWidget {
  final UserModel receiver;
  const ChatScreen({super.key,  required this.receiver});

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<UserProvider>(context).user;
    return ChangeNotifierProvider(create: (context) => ChatViewmodel(ChatService(), currentUser!, receiver),child: Consumer<ChatViewmodel>(builder: (context)),)
    return Scaffold();
  }
}
