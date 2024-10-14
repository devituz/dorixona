import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/Colors/colors.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  final List<Map<String, String>> messages = [
    {'text': 'Sizga qanday yordam bera olaman?', 'sender': 'system'},
    {
      'text': 'Men qon tomiri dorisi haqida ma\'lumot olishmoqchiman.',
      'sender': 'user'
    },
    {
      'text': 'Qon tomiri dorisi haqida qanday ma\'lumot kerak?',
      'sender': 'system'
    },
    {
      'text':
      'Men dorining foydalari va foydalanish bo\'yicha ma\'lumot istayman.',
      'sender': 'user'
    },
    {
      'text':
      'Qon tomiri dorisi, asosan, qon bosimini pasaytirish va qon aylanishini yaxshilash uchun mo\'ljallangan. Uni qanday ishlatishni bilmoqchimisiz?',
      'sender': 'system'
    },
    {
      'text':
      'Ha, iltimos, dorini qanday ishlatish kerakligi haqida batafsil ma\'lumot bering.',
      'sender': 'user'
    },
    {
      'text':
      'Dorini kundalik ravishda bir marta, ovqatdan keyin, bir tabletka qabul qilish tavsiya etiladi. Qon bosimini doimiy nazoratda tuting va shifokoringiz bilan maslahatlashishni unutmang.',
      'sender': 'system'
    },
    {
      'text':
      'Rahmat! Boshqa savollarim bo\'lsa, qanday qilib siz bilan bog\'lana olishim mumkin?',
      'sender': 'user'
    },
    {
      'text':
      'Agar qo\'shimcha savollaringiz bo\'lsa, bu chat orqali yoki telefon orqali bog\'lanishingiz mumkin.',
      'sender': 'system'
    },
  ];
  final TextEditingController _controller = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _animation;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );

    _scrollController.addListener(() {
      // Listen for changes in the scroll position
      if (_scrollController.offset >=
          _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {});
      }
    });
  }

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;

    final index = messages.length;
    messages.add({
      'text': text,
      'sender': 'user',
    });
    _listKey.currentState?.insertItem(index);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Scroll to the end of the list
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });

    _controller.clear();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    _controller.dispose(); // Clean up the controller
    super.dispose();
  }

  Color _blendColors(Color color1, Color color2) {
    return Color.lerp(
        color1, color2, 0.5)!; // 0.5 - ranglarning teng aralashishi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.oq),
        title: const Text(
          'Chat with Call Center',
          style: TextStyle(
            color: AppColors.oq,
          ),
        ),
        backgroundColor:
        _blendColors(const Color(0xFF0E2946), const Color(0xFF3F88E7)),
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              physics: const BouncingScrollPhysics(),
              key: _listKey,
              controller: _scrollController,
              initialItemCount: messages.length,
              itemBuilder: (context, index, animation) {
                final message = messages[index];
                final isUser = message['sender'] == 'user';
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: isUser ? Offset(1, 0) : Offset(-1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: Container(
                    alignment:
                    isUser ? Alignment.centerRight : Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      crossAxisAlignment: isUser
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: isUser
                                ? AppColors.icon_colors
                                : Color(0xFF0E2946),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: isUser
                                  ? Radius.circular(12)
                                  : Radius.circular(0),
                              bottomRight: isUser
                                  ? Radius.circular(0)
                                  : Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            message['text']!,
                            style: TextStyle(
                              color: isUser ? Colors.white : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color:  Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            // color: Colors.grey[200],
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.attach_file),
                  onPressed: () {},
                  color: _blendColors(
                      const Color(0xFF0E2946), const Color(0xFF3F88E7)),
                ),
                Expanded(
                  child: TextField(
                    controller: _controller, // Use the correct controller
                    decoration: InputDecoration(
                      hintText: 'Yozing...',
                      hintStyle: TextStyle(
                          color: AppColors.oq, // Inputning hint text rangi
                          fontSize: 12
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: _blendColors(
                          const Color(0xFF0E2946), const Color(0xFF3F88E7)),
                      filled: true,
                    ),
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    style: TextStyle(
                        color: AppColors.oq // TextField ichidagi matn rangi
                    ),
                    cursorColor:const Color(0xFF3F88E7), // Kursor rangi
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(_controller.text),
                  color: _blendColors(
                      const Color(0xFF0E2946), const Color(0xFF3F88E7)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
